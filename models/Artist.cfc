component extends="quick.models.BaseEntity" {
	// the docs say "Every column in the related database table is retrieved
	// and available in your entity by default" without this property
	// artist.getName() fails
	property name;

	function albums() {
		return hasMany( "Album" );
	}
}
