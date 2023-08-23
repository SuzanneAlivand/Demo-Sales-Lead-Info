var express = require("express");
var app = express();
var apis = require("./lib/apis");
const { db, pgp } = require("./lib/dbConn");

//const getData = require("./getData");
//const getData = require("./getDataCF_CC.js");
//const { SapCfAxios } = require("sap-cf-axios");

// set the view engine to ejs
app.set("view engine", "ejs");

app.use(express.static(__dirname + "/scripts"));

// use res.render to load up an ejs view file

// index page

app.get("/", async (req, res) => {
  const newData =
    typeof req.query.filter === "undefined"
      ? await apis.getAllLead(req, res, db)
      : await apis.getLead(req, res, db, req.query.filter);

  res.render("./index", { clientList: newData });
});

app.get("/setup", (req, res) => {
  apis.setupDB(req, res, db, pgp);
});

app.get("/getalllead", (req, res) => {
  apis.getAllLead(req, res, db);
});

app.get("/reset", (req, res) => {
  apis.resetSchema(req, res, db);
});

app.listen(8080);
