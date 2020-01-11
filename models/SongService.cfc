component {
	property wirebox inject="wirebox";

	public SongService function init() {
		return this;
	}

	public Song function getByID( required any id) {
		return wirebox.getInstance( "Song" )
			.findOrFail( id );
	}

	public array function getAllAsArray() {
		return wirebox.getInstance( "Song" )
			.orderby( "name" )
			.get();
	}

	public Song function create( required struct values ) {
		return wirebox.getInstance( "Song" )
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
