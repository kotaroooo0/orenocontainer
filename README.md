# orenocontainer

## 概要

コンテナを作ってみた。
`libcontainer`を使ってコンテナを作るサンプルは何個かあったが、`libcontainer`のバージョン変更のせいか構造体が変わっていたりし、うまく動作しなかった。
orenocontainer でも、まだ完璧には動作しない。

## 実行方法

Docker で Linux 環境を立てて、libcontainer でコンテナを作成する

```sh
# orenocontainerのベースとしてalpine linuxを準備
$ docker pull alpine
$ docker run --name alpine alpine
$ docker export alpine > alpine.tar
$ mkdir rootfs
$ tar -C rootfs -xvf alpine.tar

# Linux環境を準備
$ docker build -t orenocontainer .
$ docker run --privileged -it orenocontainer /bin/bash

# Dockerコンテナ内
$ orenocontainer
/bin/sh: 0: can\'t access tty; job control turned off

# orenocontainer内
$ go
/bin/sh: 7: go: not found
$ hostname
83409d06ecab
(TODO: これをconfigで設定したtestingに表示できるようにしたい)
$ exit
(Dokerコンテナに戻る)
```

## 参考

https://github.com/opencontainers/runc/tree/fbf047bf2fcb5938abd50b17e3592f9bf8ce7882/libcontainer

https://github.com/opencontainers/runc/blob/fbf047bf2fcb5938abd50b17e3592f9bf8ce7882/libcontainer/integration/template_test.go

https://ascii.jp/elem/000/001/502/1502967/

https://github.com/budougumi0617/gsp/tree/master/ch17/container
