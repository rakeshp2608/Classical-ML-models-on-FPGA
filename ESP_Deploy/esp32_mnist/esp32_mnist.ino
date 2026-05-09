// esp32_mnist.ino -- All 5 models: DT | RF | KNN | SVM | MLP (MNIST 8x8 digits)
#include <Arduino.h>
#include "utils.h"
#include "dt_engine.h"
#include "rf_engine.h"
#include "knn_engine.h"
#include "svm_engine.h"
#include "mlp_engine.h"

struct ModelDesc {
    const char* name;
    PredictFn   predict;
    void        (*eval_fn)();
};

static const ModelDesc MODELS[] = {
    {"Decision Tree", dt_predict,  dt_eval },
    {"Random Forest", rf_predict,  rf_eval },
    {"KNN (K=3)",     knn_predict, knn_eval},
    {"SVM RBF",       svm_predict, svm_eval},
    {"MLP 32-32-10",  mlp_predict, mlp_eval},
};
static const uint8_t N_MODELS = 5;

void compare_all(const float* feat) {
    Serial.println();
    Serial.println(
        "+------------------+------------+---------+----------+");
    Serial.println(
        "| Model            | Prediction |  Conf%  | Lat.(us) |");
    Serial.println(
        "+------------------+------------+---------+----------+");
    for (uint8_t m = 0; m < N_MODELS; m++) {
        MLResult r = MODELS[m].predict(feat);
        if (r.label >= ML_N_CLASSES) r.label = 0;
        char buf[90];
        snprintf(buf, sizeof(buf),
            "| %-16s | %-10s | %5.1f%%  | %8.3f |",
            MODELS[m].name,
            ML_CLASS_NAMES[r.label],
            r.confidence,
            r.us
        );
        Serial.println(buf);
    }
    Serial.println(
        "+------------------+------------+---------+----------+");
}

void benchmark_all(const float* feat, uint16_t N) {
    Serial.println();
    Serial.print("-- Benchmark ("); Serial.print(N);
    Serial.println(" runs per model) --");
    Serial.println(
        "+------------------+----------+----------+----------+");
    Serial.println(
        "| Model            |  Min us  |  Avg us  |  Max us  |");
    Serial.println(
        "+------------------+----------+----------+----------+");
    float mhz = (float)ESP.getCpuFreqMHz();
    for (uint8_t m = 0; m < N_MODELS; m++) {
        uint32_t mn = 0xFFFFFFFFUL, mx = 0, sum = 0;
        for (uint16_t i = 0; i < N; i++) {
            if (i % 50 == 0) yield();
            MLResult r = MODELS[m].predict(feat);
            if (r.cycles < mn) mn = r.cycles;
            if (r.cycles > mx) mx = r.cycles;
            sum += r.cycles;
        }
        char buf[90];
        snprintf(buf, sizeof(buf),
            "| %-16s | %8.3f | %8.3f | %8.3f |",
            MODELS[m].name, mn/mhz, (sum/N)/mhz, mx/mhz);
        Serial.println(buf);
    }
    Serial.println(
        "+------------------+----------+----------+----------+");
}

void print_help() {
    Serial.println();
    Serial.println("Commands:");
    Serial.println("  eval  -- full test set evaluation");
    Serial.println("  bench -- benchmark all models");
    Serial.println("  mem   -- memory info");
    Serial.println("  help  -- show this menu");
}

void setup() {
    Serial.begin(115200);
    delay(2000);

    Serial.println("================================================");
    Serial.println("  ESP32 MNIST (8x8) ML: DT|RF|KNN|SVM|MLP");
    Serial.println("  Quantized | PROGMEM | Cycle Accurate");
    Serial.println("================================================");
    Serial.print("CPU  : "); Serial.print(ESP.getCpuFreqMHz()); Serial.println(" MHz");
    Serial.print("Heap : "); Serial.print(ESP.getFreeHeap()); Serial.println(" B");
    Serial.print("Flash: "); Serial.print(ESP.getFlashChipSize()/1024); Serial.println(" KB");

    for (uint8_t m = 0; m < N_MODELS; m++) {
        MODELS[m].eval_fn();
        delay(10);
    }

    // Benchmark on first test sample
    float sample[ML_N_FEAT];
    for (uint8_t f = 0; f < ML_N_FEAT; f++)
        sample[f] = pm_f32(&ML_X_TEST_RAW[0][f]);
    benchmark_all(sample, 100);
    print_help();
}

void loop() {
    if (!Serial.available()) return;
    String cmd = Serial.readStringUntil('\n');
    cmd.trim(); cmd.toLowerCase();

    if (cmd == "eval") {
        for (uint8_t m = 0; m < N_MODELS; m++) { MODELS[m].eval_fn(); delay(10); }
    } else if (cmd == "bench") {
        float sample[ML_N_FEAT];
        for (uint8_t f = 0; f < ML_N_FEAT; f++)
            sample[f] = pm_f32(&ML_X_TEST_RAW[0][f]);
        benchmark_all(sample, 100);
    } else if (cmd == "mem") {
        Serial.print("Free heap : "); Serial.print(ESP.getFreeHeap()); Serial.println(" B");
        Serial.print("CPU freq  : "); Serial.print(ESP.getCpuFreqMHz()); Serial.println(" MHz");
    } else if (cmd == "help") {
        print_help();
    } else {
        Serial.println("Unknown command. Type 'help'.");
    }
}
