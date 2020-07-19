# orenocontainer

## Linux 環境

Docker で Linux 環境を立てて、libcontainer でコンテナを作成する

```sh
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
