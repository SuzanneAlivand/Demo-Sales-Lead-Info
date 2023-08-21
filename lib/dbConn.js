const promise = require("bluebird");
const xsenv = require("@sap/xsenv");
const env = require("../default-env.json");

const optionsDBPromise = {
    promiseLib: promise
};

const pgp = require("pg-promise")(optionsDBPromise);
console.log({ env });

var conn_service = {};
try {
    var credentials = env.VCAP_SERVICES["my-post-db"][0].credentials
    conn_service.host = credentials.hostname
    conn_service.port = credentials.port
    conn_service.database = credentials.dbname
    conn_service.user = credentials.username
    conn_service.password = credentials.password
    conn_service.ssl = {}
    conn_service.ssl.ca = credentials.sslrootcert
    conn_service.ssl.rejectUnauthorized = false

} catch (e) {
    console.log("Error", e);
}


console.log({ conn_service });

const db = pgp(conn_service);

db.func("version")
    .then(data => {
        console.log("DB Connection Success", { data });
    })
    .catch(error => {
        console.log("DB Connection Error", error);
    });

module.exports = {
    db: db,
    pgp: pgp
};

