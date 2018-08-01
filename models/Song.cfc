component extends="quick.models.BaseEntity" {
	property keyType inject="UUID@quick" persistent=false;

	// the docs say "Every column in the related database table is retrieved
	// and available in your entity by default" without this property
	// song.getName() fails
	property name;

	property albumID sqltype="cf_sql_integer"; // setting the sqltype allows nulls

	function album() {
		return belongsTo( "Album" );
	}
}
