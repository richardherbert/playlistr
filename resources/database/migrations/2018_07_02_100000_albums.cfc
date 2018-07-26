component {

	function up( schema ) {
		schema.create( "albums", function( table ) {
			table.increments( "id" );

			table.string( "name" );
		} );
	}

	function down( schema ) {
		schema.drop( "albums" );
	}

}
