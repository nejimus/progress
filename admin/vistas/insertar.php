	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Tablas / <?php echo $sec; ?> / Insertar</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Insertar</h1>
			</div>
		</div><!--/.row-->

				<?php
				SWITCH ($sec) {
				case 'Animes':
				?>

				<div class="panel panel-default">
					<div class="panel-heading">Anime</div>
					<div class="panel-body">
						<div class="col-md-6">
							<form id="finsert" name="insert" method="POST" action="">
								<div class="form-group">
									<label>Titulo</label>
									<input name="titulo" class="form-control" placeholder="Titulo">
								</div>
								<div class="form-group">
									<label>Titulo en inglés</label>
									<input name="title" class="form-control" placeholder="Titulo alternativo">
								</div>								
								<div class="form-group">
									<label>Sinopsis</label>
									<textarea name="sinopsis" class="form-control" rows="3"></textarea>
								</div>
								<div class="form-group">
									<label>Géneros</label>
									<select multiple name="genero[]" class="form-control">
									<?php foreach ($generos as $genero): ?>	
										<option value="<?php echo $genero[0]; ?>"><?php echo $genero[1]; ?></option>
									<?php endforeach ?>
									</select>
								</div>
								<div class="form-group">
									<label>Fuente</label>
									<select name="fuente" class="form-control">
										<option value="Manga">Manga</option>
										<option value="Novela Ligera">Novela</option>
										<option value="Original">Original</option>
									</select>
								</div>									
							</div>
								<div class="col-md-6">

									<div class="form-group">
										<label>Episodios</label>
										<input name="episodios" class="form-control" placeholder="25">	
									</div>

									<div class="form-group">
										<label>Temporada</label>
										<input name="temporada" class="form-control" placeholder="Verano 2018">	
									</div>
																	
									<button type="submit" name="insertar" class="btn btn-primary">Insertar</button>
									<button type="reset" class="btn btn-default">Borrar</button>
								</div>
							</form>
						</div>
					</div>
				</div><!-- /.panel-->

				<?php
				break;		
				case 'Juegos':	
				?>

				<div class="panel panel-default">
					<div class="panel-heading">Juego</div>
					<div class="panel-body">
						<div class="col-md-6">
							<form id="finsert" name="insert" method="POST" action="">
								<div class="form-group">
									<label>Titulo</label>
									<input name="titulo" class="form-control" placeholder="Titulo">
								</div>
								<div class="form-group">
									<label>Titulo alternativo</label>
									<input name="title" class="form-control" placeholder="Titulo alternativo">
								</div>								
								<div class="form-group">
									<label>Descripción</label>
									<textarea name="descripcion" class="form-control" rows="3"></textarea>
								</div>
								<div class="form-group">
									<label>Géneros</label>
									<select multiple name="genero[]" class="form-control">
									<?php foreach ($generos as $genero): ?>	
										<option value="<?php echo $genero[0]; ?>"><?php echo $genero[1]; ?></option>
									<?php endforeach ?>
									</select>
								</div>
								<div class="form-group">
									<label>Desarrolladora</label>
									<select name="desarrolladora" class="form-control">
										<?php foreach ($desarrolladoras as $desarrolladora): ?>	
											<option value="<?php echo $desarrolladora[0]; ?>"><?php echo $desarrolladora[1]; ?></option>
										<?php endforeach ?>
									</select>
								</div>									
							</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Plataformas (Sobremesa)</label>
										<?php foreach ($plataformas as $plataforma): ?>	
											<div class="checkbox">
												<label>
													<input type="checkbox" name="enfer[<?php echo $plataforma[0]; ?>]" value="<?php echo $plataforma[0]; ?>"><?php echo $plataforma[1]; ?>
												</label>
											</div>		
										<?php endforeach ?>																											
									</div>
									<div class="form-group">
										<label>Plataformas (Portátiles)</label>
										<?php foreach ($plataformasp as $plataformap): ?>	
											<div class="checkbox">
												<label>
													<input type="checkbox" name="enfer[<?php echo $plataformap[0]; ?>]" value="<?php echo $plataformap[0]; ?>"><?php echo $plataformap[1]; ?>
												</label>
											</div>		
										<?php endforeach ?>																											
									</div>																		
									<div class="form-group">
										<label>Fecha lanzamiento</label>
										<input name="lanzamiento" class="form-control" type="date">	
									</div>
																	
									<button type="submit" name="insertar" class="btn btn-primary">Insertar</button>
									<button type="reset" class="btn btn-default">Borrar</button>
								</div>
							</form>
						</div>
					</div>
				</div><!-- /.panel-->

				<?php
				break;
				}
				?>

			</div><!-- /.col-->
		</div><!-- /.row -->
	</div><!--/.main-->				