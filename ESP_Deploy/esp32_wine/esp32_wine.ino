// esp32_wine.ino -- All 5 models: DT | RF | KNN | SVM | MLP (Wine dataset)
#include <Arduino.h>
#include "utils.h"
#include "dt_engine.h"
#include "rf_engine.h"
#include "knn_engine.h"
#include "svm_engine.h"
#include "mlp_engine.h"

// ── Demo samples (raw Wine feature values) ───────────────────
// Features: Alcohol, Malic acid, Ash, Alcalinity of ash, Magnesium,
//           Total phenols, Flavanoids, Nonflavanoid phenols,
//           Proanthocyanins, Color intensity, Hue,
//           OD280/OD315, Proline
struct Sample {
    float       f[ML_N_FEAT];
    const char* expected;
};

static const Sample DEMOS[] = {
    {{14.23f, 1.71f, 2.43f, 15.6f, 127.0f, 2.80f, 3.06f, 0.28f, 2.29f, 5.64f, 1.04f, 3.92f, 1065.0f}, "Class_0"},
    {{12.37f, 0.94f, 1.36f, 10.6f, 88.0f, 1.98f, 0.57f, 0.28f, 0.42f, 1.95f, 1.05f, 1.82f, 520.0f}, "Class_1"},
    {{13.73f, 4.36f, 2.26f, 22.5f, 88.0f, 1.28f, 0.47f, 0.52f, 1.15f, 6.62f, 0.78f, 1.75f, 520.0f}, "Class_2"},
};
static const uint8_t N_DEMOS = 3;

// ── Model table ───────────────────────────────────────────────
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
    {"MLP 16-16-3",   mlp_predict, mlp_eval},
};
static const uint8_t N_MODELS = 5;

// ── Compare all models on one sample ─────────────────────────
void compare_all(const float* feat) {
    Serial.println();
    Serial.print("Input: [");
    for (uint8_t i = 0; i < ML_N_FEAT; i++) {
        Serial.print(feat[i], 2);
        if (i < ML_N_FEAT - 1) Serial.print(", ");
    }
    Serial.println("]");
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

// ── Benchmark all models ──────────────────────────────────────
void benchmark_all(const float* feat, uint16_t N) {
    Serial.println();
    Serial.print("-- Benchmark (");
    Serial.print(N);
    Serial.println(" runs per model) --");
    Serial.println(
        "+------------------+----------+----------+----------+");
    Serial.println(
        "| Model            |  Min us  |  Avg us  |  Max us  |");
    Serial.println(
        "+------------------+----------+----------+----------+");
    float mhz = (float)ESP.getCpuFreqMHz();
    for (uint8_t m = 0; m < N_MODELS; m++) {
        uint32_t mn  = 0xFFFFFFFFUL;
        uint32_t mx  = 0;
        uint32_t sum = 0;
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
            MODELS[m].name,
            mn      / mhz,
            (sum/N) / mhz,
            mx      / mhz
        );
        Serial.println(buf);
    }
    Serial.println(
        "+------------------+----------+----------+----------+");
}

// ── Parse serial input ────────────────────────────────────────
bool parse_input(const String& s, float* out) {
    uint8_t idx   = 0;
    int     start = 0;
    for (int i = 0; i <= (int)s.length(); i++) {
        if (i == (int)s.length() || s[i] == ',') {
            if (idx >= ML_N_FEAT) return false;
            out[idx++] = s.substring(start, i).toFloat();
            start = i + 1;
        }
    }
    return idx == ML_N_FEAT;
}

void print_help() {
    Serial.println();
    Serial.println("Commands:");
    Serial.println("  f1,f2,...,f13 -- classify with all 5 models");
    Serial.println("  eval          -- full test set evaluation");
    Serial.println("  bench         -- benchmark all models");
    Serial.println("  demo          -- run preset demo samples");
    Serial.println("  mem           -- memory info");
    Serial.println("  help          -- show this menu");
}

// ── Setup ─────────────────────────────────────────────────────
void setup() {
    Serial.begin(115200);
    delay(2000);

    Serial.println("================================================");
    Serial.println("  ESP32 Wine ML: DT|RF|KNN|SVM|MLP");
    Serial.println("  Quantized | PROGMEM | Cycle Accurate");
    Serial.println("================================================");
    Serial.print("CPU  : "); Serial.print(ESP.getCpuFreqMHz());
    Serial.println(" MHz");
    Serial.print("Heap : "); Serial.print(ESP.getFreeHeap());
    Serial.println(" B");
    Serial.print("Flash: ");
    Serial.print(ESP.getFlashChipSize() / 1024);
    Serial.println(" KB");

    for (uint8_t m = 0; m < N_MODELS; m++) {
        MODELS[m].eval_fn();
        delay(10);
    }

    Serial.println("\n=== Demo Samples (all 5 models) ===");
    for (uint8_t i = 0; i < N_DEMOS; i++) {
        Serial.print("\nExpected: ");
        Serial.println(DEMOS[i].expected);
        compare_all(DEMOS[i].f);
    }

    benchmark_all(DEMOS[0].f, 200);
    print_help();
}

// ── Loop ──────────────────────────────────────────────────────
void loop() {
    if (!Serial.available()) return;
    String cmd = Serial.readStringUntil('\n');
    cmd.trim();
    cmd.toLowerCase();

    if (cmd == "eval") {
        for (uint8_t m = 0; m < N_MODELS; m++) {
            MODELS[m].eval_fn();
            delay(10);
        }
    } else if (cmd == "bench") {
        benchmark_all(DEMOS[0].f, 200);
    } else if (cmd == "demo") {
        for (uint8_t i = 0; i < N_DEMOS; i++) {
            Serial.print("\nExpected: ");
            Serial.println(DEMOS[i].expected);
            compare_all(DEMOS[i].f);
        }
    } else if (cmd == "mem") {
        Serial.print("Free heap : ");
        Serial.print(ESP.getFreeHeap());
        Serial.println(" B");
        Serial.print("CPU freq  : ");
        Serial.print(ESP.getCpuFreqMHz());
        Serial.println(" MHz");
    } else if (cmd == "help") {
        print_help();
    } else {
        float feat[ML_N_FEAT];
        if (parse_input(cmd, feat)) {
            compare_all(feat);
        } else {
            Serial.println("Unknown command. Type 'help'.");
        }
    }
}
