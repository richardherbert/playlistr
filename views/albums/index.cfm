<cfoutput>
	<main role="main">
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">Albums</h1>
			</div>
		</div>

		<div class="container">
			<div class="row mb-2">
				<div class="col-md-12">
					<a class="btn btn-primary" href="#event.buildLink( 'albums.create' )#" role="button">Create Album</a>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<table class="table table-striped table-bordered">
						<thead class="thead-dark">
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Name</th>
								<th scope="col">&nbsp;</th>
							</tr>
						</thead>

						<tbody>
							<cfloop array="#prc.albums#" item="album">
								<tr>
									<th scope="row">#album.getID()#</th>
									<td><a href="#event.buildLink( to='albums.update', querystring='id=#album.getID()#' )#">#album.getName()#</a></td>
									<td><a href="#event.buildLink( to='albums.delete', querystring='id=#album.getID()#' )#">Delete</a></td>
								</tr>
							</cfloop>
						</tbody>
					</table>
				</div>
			</div>
	</main>
</cfoutput>
