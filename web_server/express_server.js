var express = require("express")
var nunjucks = require("nunjucks")
var app = express()

nunjucks.configure('views', {
    autoescape: true,
    express: app
});

app.set('views', './views')
//app.set('view engine', 'nunjucks')

app.get("/", function (req, res) {
    res.send("Hello World!")
})

app.get("/hello", function (req, res) {
    res.render("hello.njk", {foo: "bar"})
})

app.get("hello_world.js", function (req, res) {
    res.render("routes/hello_world.js")
})

app.listen(3000, function () {
    console.log("Example app listening on port 3000!")
})
