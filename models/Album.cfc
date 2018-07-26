component extends="quick.models.BaseEntity" {
	// the docs say "Every column in the related database table is retrieved
	// and available in your entity by default" without this property
	// album.getName() fails
	property name;
}
