# apkdecompile
A tool on OSX to decompile Android APK file
(apk downloader: http://apps.evozi.com/apk-downloader/)

usage:

1.decompile apk file to jar:
```
# put apk file in apk folder, then run the following command, the output will be in folder ./data
sh decompile se.clearchannel.citybikes.apk   				
```    
  or

```  
# the output will be in folder ./citybikes
sh decompile se.clearchannel.citybikes.apk citybikes		
```

after that, a *.jar file will be created.

2.open the application: *bin/jd-gui-osx-1.4.0/JD-GUI.app*, click icon "open file", select the *.jar file.

