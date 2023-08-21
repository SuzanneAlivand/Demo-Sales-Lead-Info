const promise = require("bluebird");
const xsenv = require("@sap/xsenv");

// Now we will comment out the env, and use the @sap/xsenv module for retrieving the env variables,
// for this matter we use a function named "loadEnv" to load the env variables. we also use the "getServices" func
// to get the service info based of the provided tag.
//const env = require("../default-env.json");

const optionsDBPromise = {
    promiseLib: promise
};

const pgp = require("pg-promise")(optionsDBPromise);


var conn_service = {};
try {

    // we want to use xsenv's getService() to filter by tag and load service credentials in VCAP variables
    xsenv.loadEnv();
    var credentials = xsenv.getServices({
        "my-post-db": { tag: "db-post-tag-a02" }
    })["my-post-db"]


    // var credentials = env.VCAP_SERVICES["my-post-db"][0].credentials
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

