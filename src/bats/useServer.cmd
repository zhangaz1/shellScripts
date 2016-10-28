::cscript.exe "useTestServer.vbs" "d:/Code/NG/Web/NetBrainNGServices/src/main/csharp/com.netbrain.ng.webservices/Web.config" %1 %2 %3
::node changeServerInNbConfig.js "d:/Code/NG/Web/NetBrainNGServices/src/main/csharp/com.netbrain.ng.webservices/NBConfig.json" %1 %2 %3 %4 %5
node changeServerByConfig.js "d:/Code/NG/Web/NetBrainNGServices/src/main/csharp/com.netbrain.ng.webservices/NBConfig.json" %1
iisreset
