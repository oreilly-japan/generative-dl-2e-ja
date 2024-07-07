## WorldModelsの実行

「12章 世界モデル」で紹介しているWorldModelsは、本書のサンプルプログラムではありません。
WorldModelsは外部のリポジトリから入手できます。

> <https://github.com/zacwellmer/WorldModels>

実行方法は上記リポジトリの`README.md`に書いてあります。

しかし、本書翻訳時点で、上記リポジトリに用意されているDockerイメージはビルドできませんでした。

そのため、サンプルのDockerイメージを参考までに用意しました。

* [`Dockerfile.wm_20240407`](./docker/Dockerfile.wm_20240407)

ただし、あくまでDockerイメージの一例であり、WorldModelsの動作を保証するものではありません。また、サポートもありません。各自の責任において利用してください。

#### 注意点

* Mac（M1チップ搭載機で検証）では、TensorFlowのバージョンの問題で動作を確認できませんでした。

* Windows 11（WSL2＋Ubuntu 20.04/CUDA 11.8の環境）で動作確認しました。
  * 最初に`extract.py`の実行（30分程度）が必要

  ```
  python extract.py
  ```

  * アニメーションを表示するには以下が必要

  ```
  # ターミナル上で以下を実行
  /usr/bin/Xvfb :0 -screen 0 1400x900x24 +extension RANDR &
  ```
  
  ```
  # ノートブックの中で以下を実行
  import os
  os.environ["DISPLAY"] = ":0"
  ```

