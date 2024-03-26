var request = require('request');

var asd=function(link) {
var info = {
   url: 'http://api.roblox.com/Marketplace/ProductInfo?assetId='.link
};
request(info,function(res) {
    console.log(res)
});
};

