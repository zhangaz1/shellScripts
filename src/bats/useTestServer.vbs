Dim args, configPath, server
server = "10.10.4.232"

Set args = wscript.arguments
configPath = args(0)

If args.length > 1 Then
	server = args(1)	
End If

Dim doc, node

Set doc = CreateObject("MSXML.DOMDocument")
doc.Load configPath

Set node = doc.selectSingleNode("/configuration/connectionStrings/add[@name='MongoDB']")
node.setAttribute "connectionString", "mongodb://" + server + ":27017"

Set node = doc.selectSingleNode("/configuration/connectionStrings/add[@name='RabbitMQ']")
node.setAttribute "connectionString", "amqp://guest:guest@" + server + ":5672/"

Set node = doc.selectSingleNode("/configuration/connectionStrings/add[@name='Redis']")
node.setAttribute "connectionString", "" + server + ":6379,keepAlive=180,connectTimeout=15000"

doc.save configPath