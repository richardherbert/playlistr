component extends="coldbox.system.EventHandler" {
	property SongService inject="SongService";

	function index( event, rc, prc ) {
		prc.songs = SongService.getAllAsArray();

		if( prc.songs.len() == 0 ) {
			relocate( "songs.create" );
		}
	}

	function create( event, rc, prc ) {
		param rc.id = "";

		prc.name = "";

		prc.albumID = "";

		prc.albums = getInstance( "album" )
			.orderby( "id" )
			.get();

		prc.action = "Create";
		prc.formAction = "songs.createAction";

		event.setView( "songs/createUpdate" );
	}

	function createAction( event, rc, prc ) {
		param rc.name = "";
		param rc.albumID = "";

		SongService.create( {
			name: rc.name,
			albumID: rc.albumID
		} );

		relocate( "songs" );
	}

	function update( event, rc, prc ) {
		param rc.id = "";

		var song = SongService.getByID( rc.id );

		prc.name = song.getName();

		prc.albumID = song.getAlbum().getID();

		prc.albums = getInstance( "Album" )
			.orderby( "id" )
			.get();

		prc.action = "Update";
		prc.formAction = "songs.updateAction";

		event.setView( "songs/createUpdate" );
	}

	function updateAction( event, rc, prc ) {
		param rc.id = "";
		param rc.name = "";
		param rc.albumID = "";

		SongService.update( rc.id, {
			name: rc.name,
			albumID: rc.albumID
		} );

		relocate( "songs" );
	}

	function delete( event, rc, prc ) {
		param rc.id = "";

		SongService.delete( rc.id );

		relocate( "songs" );
	}
}
