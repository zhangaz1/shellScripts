Dim args, configPath, mongoDbServer, rabbitMqServer, redisServer
mongoDbServer = "localhost"
rabbitMqServer = "localhost"
redisServer =  "localhost"

Set args = wscript.arguments
configPath = args(0)

If args.length > 1 Then
	mongoDbServer = args(1)
End If

If args.length > 2 Then
	rabbitMqServer = args(2)
Else
	rabbitMqServer = mongoDbServer
End If

If args.length > 3 Then
	redisServer = args(3)
Else
	redisServer = rabbitMqServer
End If

Dim doc, node

Set doc = CreateObject("MSXML.DOMDocument")
doc.Load configPath

Set node = doc.selectSingleNode("/configuration/connectionStrings/add[@name='MongoDB']")
node.setAttribute "connectionString", "mongodb://" + mongoDbServer + ":27017"

Set node = doc.selectSingleNode("/configuration/connectionStrings/add[@name='RabbitMQ']")
node.setAttribute "connectionString", "amqp://guest:guest@" + rabbitMqServer + ":5672/"

Set node = doc.selectSingleNode("/configuration/connectionStrings/add[@name='Redis']")
node.setAttribute "connectionString", "" + redisServer + ":6379,keepAlive=180,connectTimeout=15000"

doc.save configPath