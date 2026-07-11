#!/bin/bash
# Launch Hunyuan3D-2mv Gradio app. Run from Git Bash on Windows.
# Texture generation is disabled because custom_rasterizer failed to compile on this machine
# (MSVC 14.44 / torch 2.11 header incompatibility) — see deployment report. Drop --disable_tex
# once custom_rasterizer is fixed to also enable Paint/texture generation.

source "/c/Users/Ymk23/anaconda3/etc/profile.d/conda.sh"
conda activate hunyuan3d
cd "$(dirname "$0")"

python gradio_app.py \
  --model_path tencent/Hunyuan3D-2mv \
  --subfolder hunyuan3d-dit-v2-mv-turbo \
  --disable_tex
