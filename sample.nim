import os
import jnim
import strutils
import strformat
import ./uuid_classes

# jars/に入っているjarファイルを列挙
var paths: seq[string] = @[]
for f in walkDir("jars"):
  paths.add f.path

when defined(windows):
  const sep = ";"
else:
  const sep = ":"

# Initialize JVM with JVMOption
initJNI(JNIVersion.v1_8, @["-Djava.class.path=" & paths.join(sep)])

# call method
var randomBased = Generators.randomBasedGenerator().generate().toString()
var nameBased = Generators.nameBasedGenerator().generate("name").toString()

echo fmt"{ randomBased = }"
echo fmt"{ nameBased   = }"
