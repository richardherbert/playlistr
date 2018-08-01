<cfoutput>
	<main role="main">
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">Songs</h1>
			</div>
		</div>

		<div class="container">
			<div class="row mb-2">
				<div class="col-md-12">
					<a class="btn btn-primary" href="#event.buildLink( 'songs.create' )#" role="button">Create Song</a>
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
							<cfloop array="#prc.songs#" item="song">
								<tr>
									<th scope="row">#song.getID()#</th>
									<td><a href="#event.buildLink( to='songs.update', querystring='id=#song.getID()#' )#">#song.getName()#</a></td>
									<td><a href="#event.buildLink( to='songs.delete', querystring='id=#song.getID()#' )#">Delete</a></td>
								</tr>
							</cfloop>
						</tbody>
					</table>
				</div>
			</div>
	</main>
</cfoutput>
