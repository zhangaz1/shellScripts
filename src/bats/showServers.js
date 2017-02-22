var allConfig = require('./serverConfig.json');

var servers = Object.keys(allConfig);

console.log(servers.sort());
