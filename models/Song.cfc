component extends="quick.models.BaseEntity" {
	property keyType inject="UUID@quick" persistent=false;

	property name;
	property albumID sqltype="cf_sql_integer"; // setting the sqltype allows nulls

	function album() {
		return belongsTo( "Album" );
	}
}
