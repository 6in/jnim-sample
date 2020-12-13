## jnim sample

* nim calls other jar's class using [jnim](https://github.com/yglukhov/jnim).
* gradle collects dependency jars into jars folder.

build project

```
# for Linux/Mac
export JAVA_HOME=/java/to/path
nimble collectJars
nimble build
nimble run
```

```
# windows
set JAVA_HOME=C:\java\to\path
nimble collectJars
nimble build
nimble run
```
