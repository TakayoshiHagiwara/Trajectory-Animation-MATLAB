# Trajectory-Animation-MATLAB
<img src="https://img.shields.io/badge/MATLAB-R2021b-blue"> <img src="https://img.shields.io/badge/License-MIT-green">

MATLABで3次元アニメーショングラフを描画するサンプルです。
取得した動きのあるデータを簡易的に確認したい場合に使用することを想定しています。
厳密な解析やプロット目的ではなく、あくまで確認用です。

# Environment
- MATLAB R2021b

# Installation
- 特に追加で必要なアドオンはありません。

# Usage
サンプルデータ (star.csv, circle.csv) を使用した手順です。

1. MATLABを開き、main.mが配置されたフォルダに移動する。
1. `main.m`を開き、実行する。
1. 2つのグラフのアニメーションが描画される

# Description
- データは`Data`フォルダから読み込まれます。
    - 任意のデータに変更する場合は、`main.m`のファイル名を適宜書き換えてください。

## TrajectoryAnimator.m
### Parameters
- filePath: array like
    - ファイルのパスを文字列配列形式で渡してください。
- isSaveVideo: bool
    - アニメーショングラフをビデオとして書き出す設定です。
    - trueの場合、`main.m`と同じ階層にMP4形式の動画が書き出されます。
### Note
- `filePath`に渡した個数分のグラフがプロットされます。
    - 色とLegendは2つ用なので、適宜書き換えてください。


# Versions
- 1.0: 2022/1/18

# Author
- Takayoshi Hagiwara
    - Graduate School of Media Design, Keio University
    - Toyohashi University of Technology


# License
- MIT License