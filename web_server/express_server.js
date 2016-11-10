var express = require("express")
var app = express()

app.get("/", function (req, res) {
  res.send("Hello World!")
})

app.get("/hello", function (req, res) {
  res.render("hello", function(err, html){
      res.send(html);
  });
})

app.listen(3000, function () {
  console.log("Example app listening on port 3000!")
})
