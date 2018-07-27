component {

	function up( schema ) {
		schema.alter( "albums", function( table ) {
			table.addColumn(
				table.unsignedInteger( "artistID" ).nullable()
			).addConstraint(
				table.foreignKey( "artistID" )
					.references( "id" )
					.onTable( "artists" )
					.onDelete( "cascade" )
			);
        } );
    }

	function down( schema ) {
		schema.alter( "albums", function( table ) {
			table.dropForeignKey( table.foreignKey( "artistID" ) )
				.dropColumn( "artistID" );
        } );
	}

}
