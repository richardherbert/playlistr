component {

    function up( schema ) {
		var sql = "CREATE TABLE `artists` (
			`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
			`name` varchar(255) NOT NULL,
			PRIMARY KEY (`id`)
        ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;"

        queryExecute( sql );
    }

    function down( schema ) {
        var sql = "DROP TABLE `artists`;"

        queryExecute( sql );
    }

}
