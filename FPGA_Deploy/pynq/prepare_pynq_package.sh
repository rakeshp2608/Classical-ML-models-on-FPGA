#!/bin/bash
# Package all files needed for PYNQ Z2 deployment into a single directory.
# Usage: bash prepare_pynq_package.sh
#
# Creates: pynq_deploy/ with overlays/, models/, test_vectors/, *.py, *.ipynb

set -e
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BASE="$SCRIPT_DIR/.."
PKG="$SCRIPT_DIR/pynq_deploy"

echo "=== Preparing PYNQ deployment package ==="

rm -rf "$PKG"
mkdir -p "$PKG/overlays"

# Copy bitstreams
VIVADO_OUT="$BASE/vivado/output"
if [ -d "$VIVADO_OUT" ]; then
    for f in "$VIVADO_OUT"/*.bit "$VIVADO_OUT"/*.hwh; do
        [ -f "$f" ] && cp "$f" "$PKG/overlays/"
    done
    echo "  Copied overlays from $VIVADO_OUT"
else
    echo "  WARNING: $VIVADO_OUT not found — run Vivado build first"
fi

# Copy model params
for ds in iris wine cancer mnist; do
    mkdir -p "$PKG/models/$ds"
    cp "$BASE/python/models/$ds"/*_params.npz "$PKG/models/$ds/" 2>/dev/null || true
done
echo "  Copied model parameters"

# Copy test vectors
for ds in iris wine cancer mnist; do
    mkdir -p "$PKG/test_vectors/$ds"
    cp "$BASE/python/test_vectors/$ds"/test_data.npz "$PKG/test_vectors/$ds/" 2>/dev/null || true
done
echo "  Copied test vectors"

# Copy deployment scripts
cp "$SCRIPT_DIR/deploy_all.py" "$PKG/"
cp "$SCRIPT_DIR/deploy_notebook.ipynb" "$PKG/"

echo ""
echo "=== Package ready at: $PKG ==="
echo "Transfer to PYNQ Z2 with:"
echo "  scp -r $PKG xilinx@<pynq-ip>:~/pynq_deploy"
echo ""
ls -la "$PKG/"
echo ""
echo "Overlay files:"
ls -la "$PKG/overlays/" 2>/dev/null || echo "  (none yet)"
