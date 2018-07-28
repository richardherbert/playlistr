component extends="coldbox.system.EventHandler" {
	property AlbumService inject="AlbumService";

	function index( event, rc, prc ) {
		prc.albums = AlbumService.getAllAsArray();

		if( prc.albums.len() == 0 ) {
			relocate( "albums.create" );
		}
	}

	function create( event, rc, prc ) {
		param rc.id = "";

		prc.name = "";

		prc.artistID = "";

		prc.artists = getInstance( "Artist" )
			.orderby( "id" )
			.get()
			.toArray();

		prc.action = "Create";
		prc.formAction = "albums.createAction";

		event.setView( "albums/createUpdate" );
	}

	function createAction( event, rc, prc ) {
		param rc.name = "";
		param rc.artistID = "";

		AlbumService.create( {
			name: rc.name,
			artistID: rc.artistID
		} );

		relocate( "albums" );
	}

	function update( event, rc, prc ) {
		param rc.id = "";

		var album = AlbumService.getByID( rc.id );

		prc.name = album.getName();

		prc.artistID = album.getArtist().getID();

		prc.artists = getInstance( "Artist" )
			.orderby( "id" )
			.get()
			.toArray();

		prc.action = "Update";
		prc.formAction = "albums.updateAction";

		event.setView( "albums/createUpdate" );
	}

	function updateAction( event, rc, prc ) {
		param rc.id = "";
		param rc.name = "";
		param rc.artistID = "";

		AlbumService.update( rc.id, {
			name: rc.name,
			artistID: rc.artistID
		} );

		relocate( "albums" );
	}

	function delete( event, rc, prc ) {
		param rc.id = "";

		AlbumService.delete( rc.id );

		relocate( "albums" );
	}
}
