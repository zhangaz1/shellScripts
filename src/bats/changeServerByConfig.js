var argv = process.argv;
var fs = require('fs');

var configFile = argv[2];

var allConfig = require('./serverConfig.json');

var configKey = argv[3];
var config = allConfig[configKey];

fs.writeFile(configFile, JSON.stringify(config));
