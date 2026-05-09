# Makefile — C-simulation for all HLS ML accelerators
#
# Usage:
#   make knn_iris          # compile & run KNN testbench with Iris
#   make dt_wine           # compile & run DT testbench with Wine
#   make all_iris          # run all 5 models on Iris
#   make all               # run all 5 models on all 4 datasets
#   make clean
#
# Requires: g++ with C++14, Vitis HLS 2022.2 headers

CXX      := g++
HLS_INC  := /tools/Xilinx/Vitis_HLS/2022.2/include
CXXFLAGS := -std=c++14 -O2 -I$(HLS_INC) -Icommon
BUILDDIR := build

MODELS   := knn dt rf svm mlp
DATASETS := iris wine cancer mnist

# ── Generic rules ────────────────────────────────────────────────────────

# Pattern: <model>_<dataset>
define MODEL_DATASET_RULE
$(1)_$(2): $(BUILDDIR)/$(1)_$(2)
	@echo "──── Running $(1) on $(2) ────"
	@./$(BUILDDIR)/$(1)_$(2)

$(BUILDDIR)/$(1)_$(2): $(1)_accel/src/$(1)_accel.cpp $(1)_accel/tb/$(1)_tb.cpp | $(BUILDDIR)
	$(CXX) $(CXXFLAGS) -I$(1)_accel/src -DDATASET=$(2) \
		$(1)_accel/tb/$(1)_tb.cpp $(1)_accel/src/$(1)_accel.cpp \
		-o $$@
endef

$(foreach m,$(MODELS),$(foreach d,$(DATASETS),$(eval $(call MODEL_DATASET_RULE,$(m),$(d)))))

# ── Convenience targets ──────────────────────────────────────────────────

.PHONY: all clean $(foreach d,$(DATASETS),all_$(d))

all: $(foreach m,$(MODELS),$(foreach d,$(DATASETS),$(m)_$(d)))
	@echo "\n════════════════════════════════════════"
	@echo " All C-sim tests complete"
	@echo "════════════════════════════════════════"

$(foreach d,$(DATASETS),all_$(d)): all_%: $(foreach m,$(MODELS),$$(m)_%)
	@echo "\n──── All models on $* complete ────"

$(BUILDDIR):
	@mkdir -p $(BUILDDIR)

clean:
	rm -rf $(BUILDDIR)

.PHONY: help
help:
	@echo "Targets:  <model>_<dataset>  e.g. knn_iris, mlp_mnist"
	@echo "Models:   $(MODELS)"
	@echo "Datasets: $(DATASETS)"
	@echo "Combos:   all_iris, all_wine, all_cancer, all_mnist, all"
