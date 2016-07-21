::cscript.exe "replacefiletext.vbs" "web.config" ".NETFramework,Version=v2" ".NETFramework,Version=v4.5" "web2.config"

cscript.exe "test.vbs" "web.config" "/configuration/startup/supportedRuntime" "version" "v4.5" "web2.config"

cscript.exe "test.vbs" "web2.config" "/configuration/startup/supportedRuntime[@version='v4.5']" "sku" ".NETFramework,Version=v4.5" "web3.config"
