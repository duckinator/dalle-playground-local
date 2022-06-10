# dalle-playground-local

Install dependencies and useful utilities (Fedora):

```
$ dnf install tmux git python3-pip npm make htop
```

First, clone the repo:

```
$ git clone https://github.com/duckinator/dalle-playground-local.git
```

Then, we split into two terminals (I use tmux for this).

In one terminal, run:
```
$ cd dalle-playground-local
$ make mini # or mega, or mega-full
```

In another terminal, run:
```
$ make frontend
```

... I'll probably make this a single command, at some point.
