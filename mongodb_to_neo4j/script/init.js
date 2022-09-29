rs.status();
use admin;
db.createUser({ user: "debezium" , pwd: "mongo", roles: ["userAdminAnyDatabase", "dbAdminAnyDatabase", "readWriteAnyDatabase"]})