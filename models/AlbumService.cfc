component {
	property wirebox inject="wirebox";

	public AlbumService function init() {
		return this;
	}

	public Album function getByID( required any id) {
		return wirebox.getInstance( "Album" )
			.findOrFail( id );
	}

	public array function getAllAsArray() {
		return wirebox.getInstance( "Album" )
			.orderby( "id" )
			.get()
			.toArray();
	}

	public Album function create( required struct values ) {
		return wirebox.getInstance( "Album" )
			.create( values );
	}

	public void function update( required any id, required struct values ) {
		getByID( id )
			.update( values );
	}

	public void function delete( required any id ) {
		getByID( id )
			.delete();
	}
}
