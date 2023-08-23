
const setupDB = (req, res, db, pgp) => {
    const QueryFile = pgp.QueryFile;

    db.any(new QueryFile("./lib/sqlsetup.sql"), [])
        .then(function (data) {
            res.status(200).send({ status: "Success" });
        })
        .catch(function (error) {
            res.status(500).send(error);
        });
};

const getAllLead = (req, res, db) => {
    return db
        .any("SELECT * from SALES_MGT.NEW_LEADS")
        .then(function (data) {
            return data;
        })
        .catch(function (error) {
            return {};
        });
};

const getLead = (req, res, db, filter) => {
    const filterSQL = "%" + filter + "%";
    console.log(filterSQL);
    return db
        .any(
            "SELECT * from SALES_MGT.NEW_LEADS Where name LIKE $1 OR email LIKE $1 OR address LIKE $1 ",
            [filterSQL]
        )
        .then(function (data) {
            return data;
        })
        .catch(function (error) {
            return { status: "error", error: error };
        });
};

const resetSchema = (req, res, db) => {
    db.any("DROP SCHEMA IF EXISTS SALES_MGT CASCADE")
        .then(function (data) {
            res.status(200).send({ status: "reset done" });
        })
        .catch(function (error) {
            res.status(500).send(error);
        });
};

module.exports = {
    setupDB: setupDB,
    getAllLead: getAllLead,
    resetSchema: resetSchema,
    getLead: getLead
};