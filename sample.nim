import os
import jnim
import strutils
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
echo Generators.randomBasedGenerator().generate().toString()
echo Generators.nameBasedGenerator().generate("name").toString()
