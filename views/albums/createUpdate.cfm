<cfoutput>
	<main role="main">
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">#prc.action# Album</h1>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<form action="#event.buildLink( prc.formAction )#" method="POST">
						<input name="id" type="hidden" value="#rc.id#">

						<div class="form-group">
							<label for="name">Name</label>
							<input id="name" name="name" type="text" value="#prc.name#" class="form-control" placeholder="The name of the album" required autofocus>
						</div>

						<div>
							<button class="btn btn-lg btn-success btn-block" type="submit">#prc.action# Album</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</main>
</cfoutput>
