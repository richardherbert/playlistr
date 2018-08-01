component {

	function up( schema ) {
		schema.create( "songs", function( table ) {
			table.uuid( "id" ).primaryKey();

			table.string( "name" );

			table.unsignedInteger( "albumID" )
				.nullable()
				.references( "id" )
				.onTable( "albums" )
				.onDelete( "cascade" );
		} );
	}

	function down( schema ) {
		schema.drop( "songs" );
	}

}
