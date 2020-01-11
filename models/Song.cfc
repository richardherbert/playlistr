component extends="quick.models.BaseEntity" {
	property id;

	property name;
	property albumID sqltype="cf_sql_integer"; // setting the sqltype allows nulls

	function keyType() {
		return variables._wirebox.getInstance( "UUIDKeyType@quick" );
	}

	function album() {
		return belongsTo( "Album" );
	}
}
