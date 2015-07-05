# apkdecompile
A tool on OSX to decompile Android APK file
(apk downloader: http://apps.evozi.com/apk-downloader/)

usage:

1.decompile apk file to jar:
```
# put apk file in apk folder, then
sh decompile se.clearchannel.citybikes.apk   				# the output will be ./data
```    
  or
```  
sh decompile se.clearchannel.citybikes.apk citybikes		# the output will be ./citybikes
```
after that, a *.jar file will be created.

2.open the application: bin/jd-gui-0.3.5.osx.i686.dmg, then JD-GUI.app, click icon "open file", select the *.jar file.

