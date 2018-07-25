component extends="coldbox.system.EventHandler" {
	function index( event, rc, prc ) {
		var artists = getInstance( "Artist" )
			.orderby( "id" )
			.get();

		if( artists.count() == 0 ) {
			relocate( "artists.create" );
		}

		prc.artists = artists.toArray();
	}

	function create( event, rc, prc ) {
		param rc.id = "";

		prc.name = "";

		prc.action = "Create";
		prc.formAction = "artists.createAction";

		event.setView( "artists/createUpdate" );
	}

	function createAction( event, rc, prc ) {
		param rc.name = "";

		var artist = getInstance( "Artist" )
			.create( {
				name: rc.name
			} );

		relocate( "artists" );
	}

	function update( event, rc, prc ) {
		param rc.id = "";

		var artist = getInstance( "Artist" )
			.findOrFail( rc.id );

		prc.name = artist.getName();

		prc.action = "Update";
		prc.formAction = "artists.updateAction";

		event.setView( "artists/createUpdate" );
	}

	function updateAction( event, rc, prc ) {
		param rc.id = "";
		param rc.name = "";

		getInstance( "Artist" )
			.findOrFail( rc.id )
			.update( {
				name: rc.name
			} );

		relocate( "artists" );
	}

	function delete( event, rc, prc ) {
		param rc.id = "";

		var artist = getInstance( "Artist" )
			.findOrFail( rc.id )
			.delete();

		relocate( "artists" );
	}
}
