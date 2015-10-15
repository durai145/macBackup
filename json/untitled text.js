var bodyParser   = require('body-parser');
var cookieParser = require('cookie-parser');
var session      = require('express-session');
var express      = require('express');
var path         = require('path');
var https        = require('https');
var fs           = require('fs');

var app = express();
	app.use(bodyParser.urlencoded({ extended: false }));
    app.use(express.static(path.join(__dirname, "public")));
    app.use(bodyParser.json()); 
    app.use(express.static(__dirname+'/public'));
    app.use(express.static(__dirname+'/mids'));
	app.set('view engine', 'ejs');  
	app.get('/', function(req, res) {res.render('pages/index');});
	app.get('/about', function(req, res) {res.render('pages/about');});
	app.get('/user/:id', function(req, res){res.send('<select name="' + req.params.id + '" +> <option> --none-- </option>  <option>' + req.params.id  + '</option> </select>' );});
	app.post('/service/:id', function(req, res)
	{
	console.log(req);
	console.log(req.params);
	console.log(req.body);
	console.log(req.USRID);
	//res.send('<select class="ctext" name="' + req.params.id + '" +> <option> --none-- </option>  <option>' + req.prams.id  + '</option> </select>' );});
	var respStr= '<select      class="'+ req.body.class      + '" '
+'        xml="'+ req.body.xml        + '" '
+'       mndf="'+ req.body.mndf       + '" '
+'   datatype="'+ req.body.datatype   + '" '
+'   htmltype="'+ req.body.htmltype   + '" '
+'         id="'+ req.body.id         + '" '
+'   errorbox="'+ req.body.errorbox   + '" '
+'      label="'+ req.body.label      + '" '
+'      title="'+ req.body.title      + '" '
+'   onchange="'+ req.body.onchange   + '" '
+'    onclick="'+ req.body.onclick    + '" '
+'    onblure="'+ req.body.onblure    + '" '
+'  onkeydown="'+ req.body.onkeydown  + '" '
+'    onkeyup="'+ req.body.onkeyup    + '" '
+' onkeypress="'+ req.body.onkeypress + '" '
+'       task="'+ req.body.task       + '" >'
+' <option value=""    id="'+req.body.name+'"> </option>'
+' <option value=""    id="'+req.body.name+'"> '+ req.body.name+'</option>'
+' </select>';
res.send(respStr);
});

app.listen(8000);
console.log('8000 is the magic port');
