component extends="quick.models.BaseEntity" {
	property name;
	property artistID sqltype="cf_sql_integer"; // setting the sqltype allows nulls

	function artist() {
		return belongsTo( "Artist" );
	}
}
