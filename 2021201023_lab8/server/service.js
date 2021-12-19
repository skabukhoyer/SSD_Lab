var fs = require('fs');
var resp;

fs.readFile('./data.json', "utf-8", function (err, data) {

    resp = JSON.parse(data);
});

exports.getHighestMarks = () => {
    let abc;
    let max = 0;
    for (let name in resp) {
        let marks = resp[name];
        let sum = 0;
        marks.forEach(m => {
            sum += m;
        });
        if (max < sum) {
            max = sum;
            abc = name;
        }
    }
    return abc;
}
function compare(a, b) {
    return a.marks < b.marks;
}
exports.getSubjectiToppers = (index) => {

    let responseArray = [];
    for(let key in resp) {
        let obj = [
            key,
            resp[key][index]
        ];
        responseArray.push(obj);
    }

    responseArray = responseArray.sort((a,b) => a[1] - b[1]);
    
    return responseArray;
}