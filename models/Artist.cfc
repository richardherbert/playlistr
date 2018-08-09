component extends="quick.models.BaseEntity" {
	property name;

	function albums() {
		return hasMany( "Album" );
	}
}
