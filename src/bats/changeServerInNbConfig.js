var argv = process.argv;

var configFile = argv[2];
var config = require(configFile);

var mongoDbServer = argv[3];
if(mongoDbServer) {
	config.mongodb_servers.servers_URL = [
		mongoDbServer + ':27017',
	];
}

var rabbitMqServer = argv[4];
if(rabbitMqServer) {
	config.amqp_servers.servers_URL = [
		rabbitMqServer,
	];
}

var redisServer = argv[5];
if(redisServer) {
	config.redis_servers.servers_URL = [
		redisServer,
	];
}

var mongoUser = argv[6];
config.mongodb_servers.user = mongoUser || '';

var mongoPassword = argv[7];
config.mongodb_servers.password = mongoPassword || '';

var fs = require('fs');
fs.writeFile(configFile, JSON.stringify(config));
