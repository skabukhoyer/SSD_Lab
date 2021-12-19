var http = require('http');
var service = require('./service.js');
var url = require('url');

let  port = 8080;

http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'application/json'});
    let params = url.parse(req.url, true).query;
    
    let query = params.query;

    if(query == 1){
        let response = service.getHighestMarks();
        res.write(JSON.stringify(response));
    }
    else if(query == 2){
        let index = params.index;
        let response = service.getSubjectiToppers(index);
        res.write(JSON.stringify(response));
    }
    else{
        res.write("Invalid query");
    }
    return res.end();

  }).listen(port, () => {
    console.log("Server is now lisning on port "+ port);
  });