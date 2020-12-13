packageName   = "sample"
version       = "0.1.0"
author        = "6in"
description   = "jnim sample using gradle"
license       = "MIT"           

bin           = @[ "sample" ]    # アプリケーションファイル名
backend       = "c"                       # デフォルトはc

# Dependencies

requires "nim >= 1.4.2"
requires "jnim >= 0.5.1"

task collectJars, "利用しているjarを収集する":
  if dirExists("jars"):
    rmDir "jars"
  when defined(windows):
    exec "gradlew.bat collectJars"
  else:
    exec "./gradlew collectJars"  
