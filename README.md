# yabasic Docker image

yabasic (Yet Another BASIC) interpreter, see http://yabasic.de/.

## Description

Run BASIC applications without installing an interpreter locally.

## Build

```shell
$ docker build -t martingregoire/yabasic .
```

## Push to Docker hub

```shell
$ docker push martingregoire/yabasic
```

## Usage

Create a BASIC source file, for example a simple "hello world" program, and save it to `helloworld.bas`:

```basic
print "Hello World!\n";
```

---

Start a Docker container from this image, mounting your current directory to the `/app` folder inside the container:

```shell
$ docker run --rm -it -v $PWD:/app -w /app martingregoire/yabasic bash
```

---

You can then run the program from the container like this:

```shell
root@753c08b492db:~# yabasic helloworld.bas
Hello World!
```

---

Or you can start the program directly like this:

```shell
$ docker run --rm -it -v $PWD:/app -w /app martingregoire/yabasic yabasic helloworld.bas
```
