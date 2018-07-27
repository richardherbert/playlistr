<cfoutput>
	<main role="main">
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">#prc.action# Artist</h1>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<form action="#event.buildLink( prc.formAction )#" method="POST">
						<input name="id" type="hidden" value="#rc.id#">

						<div class="form-group">
							<label for="name">Name</label>
							<input id="name" name="name" type="text" value="#prc.name#" class="form-control" placeholder="The name of the artist" required autofocus>
						</div>

						<cfif prc.albums.len() != 0>
							<table class="table table-striped table-bordered">
								<thead class="thead-dark">
									<tr>
										<th scope="col">Albums</th>
									</tr>
								</thead>

								<tbody>
									<cfloop array="#prc.albums#" item="local.album">
										<tr>
											<td><a href="#event.buildLink( to='albums.update', queryString='id=#local.album.getID()#' )# ">#local.album.getName()#</a></td>
										</tr>
									</cfloop>
								</tbody>
							</table>
						</cfif>

						<div>
							<button class="btn btn-lg btn-success btn-block" type="submit">#prc.action# Artist</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</main>
</cfoutput>
