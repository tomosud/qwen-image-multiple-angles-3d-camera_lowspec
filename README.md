# 🎥 Qwen Image Edit 2511 - 3D Camera Control (Windows Low-Spec Edition)

**Windows環境・低スペックGPU対応版** - 12GB VRAM GPUで動作するQwen-Image-Edit-2511のローカル実装

このリポジトリは [multimodalart/qwen-image-multiple-angles-3d-camera](https://huggingface.co/spaces/multimodalart/qwen-image-multiple-angles-3d-camera) のフォークで、Windows環境かつ低スペックGPUで動作するように最適化されています。

## ✨ 主な変更点

- **GGUF Q2_K量子化**: 40GB → 7.47GB（約80%削減）
- **CPU Offloading**: 12GB VRAMで動作
- **Windows完全対応**: ワンクリックセットアップ、Triton/torchao依存を削除
- **Hugging Face Spaces依存削除**: ローカル専用に最適化

## 💻 必要スペック

- **OS**: Windows 10/11
- **GPU**: NVIDIA 12GB VRAM以上（RTX 3060 12GB, RTX 4060 Ti等）
- **RAM**: 16GB以上推奨
- **ディスク**: 約15GB（モデル + 依存関係）
- **前提**: [uv](https://github.com/astral-sh/uv) がインストール済み

## 🚀 セットアップ

```bash
git clone https://github.com/tomosud/qwen-image-multiple-angles-3d-camera_lowspec.git
cd qwen-image-multiple-angles-3d-camera_lowspec
setup.bat
```

## ▶️ 起動

```bash
run.bat
```

起動後、コンソールに表示される `http://127.0.0.1:7860` をブラウザで開いてください。

**注意**: 初回起動時は約13GBのモデルダウンロードが必要です。

## 🎮 使い方

1. 画像をアップロード
2. 3Dビューポートで操作:
   - 🟢 **緑**: 水平回転（Azimuth）
   - 🩷 **ピンク**: 仰角（Elevation）
   - 🟠 **オレンジ**: 距離（Distance）
3. 「🚀 Generate」をクリック

## 📝 ライセンス

Apache 2.0 - [Qwen/Qwen-Image-Edit-2511](https://huggingface.co/Qwen/Qwen-Image-Edit-2511)

## 🙏 謝辞

- オリジナル: [multimodalart/qwen-image-multiple-angles-3d-camera](https://huggingface.co/spaces/multimodalart/qwen-image-multiple-angles-3d-camera)
- GGUF量子化: [unsloth](https://huggingface.co/unsloth)
- モデル: [Qwen Team](https://huggingface.co/Qwen)
