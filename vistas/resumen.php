		<div id="contentWrapp">
			
			<div id="content">

				<div class="section">

					<a href=""><div class="addgame" style="background-color: <?php echo $color; ?>"><?php echo $boton; ?></div></a>
				
					<div class="rectangle com">

						<div class="rectitle <?php echo $st1; ?>"><?php echo $stat1; ?></div>

						<div class="covers">

							<?php foreach ($ultimos as $ultimo): ?>
										
								<?php if ($sec == 'series') { ?>
																	
									<a href="series/<?php echo $ultimo['serie']; ?>/temporadas/<?php echo $ultimo['temporada']; ?>">
										<img src="/img/<?php echo $sec; ?>/<?php echo $ultimo['idSerie'] ?>/T<?php echo $ultimo['temporada']; ?>/cover.jpg" title="<?php echo $ultimo['nombre']; ?>" class="resumen-cover" />
									</a>

								<?php } else { ?>

									<a href="<?php echo $ruta; ?>/<?php echo $ultimo[1] ?>">
										<img src="/img/<?php echo $ruta; ?>/<?php echo $ultimo[1] ?>/cover.jpg" title="<?php echo $ultimo['titulo']; ?>" class="resumen-cover" />
									</a>

								<?php } ?>						 

							<?php endforeach; ?>

						</div>

					</div>

					<div class="rectangle pro">

						<div class="rectitle ju"><?php echo $stat2; ?></div>

						<div class="covers">

							<?php foreach ($viendos as $viendo): ?>		

								<?php if ($sec == 'series') { ?>
																	
									<a href="series/<?php echo $viendo['serie']; ?>/temporadas/<?php echo $viendo['temporada']; ?>">
										<img src="/img/<?php echo $sec; ?>/<?php echo $viendo['idSerie'] ?>/T<?php echo $viendo['temporada']; ?>/cover.jpg" title="<?php echo $viendo['nombre']; ?>" class="resumen-cover" />
									</a>

								<?php } else { ?>

									<a href="<?php echo $ruta; ?>/<?php echo $viendo[1] ?>">
										<img src="/img/<?php echo $ruta; ?>/<?php echo $viendo[1] ?>/cover.jpg" title="<?php echo $viendo['titulo']; ?>" class="resumen-cover" />
									</a>

								<?php } ?>					 

							<?php endforeach; ?>

						</div>

					</div>

					<div class="rectangle pen">

						<div class="rectitle pe">PENDIENTES</div>

						<div class="covers">

							<?php foreach ($pendientes as $pendiente): ?>						
											
								<?php if ($sec == 'series') { ?>
																	
									<a href="series/<?php echo $pendiente['serie']; ?>/temporadas/<?php echo $pendiente['temporada']; ?>">
										<img src="/img/<?php echo $sec; ?>/<?php echo $pendiente['idSerie'] ?>/T<?php echo $pendiente['temporada']; ?>/cover.jpg" title="<?php echo $pendiente['nombre']; ?>" class="resumen-cover" />
									</a>

								<?php } else { ?>

									<a href="<?php echo $ruta; ?>/<?php echo $pendiente[1] ?>">
										<img src="/img/<?php echo $ruta; ?>/<?php echo $pendiente[1] ?>/cover.jpg" title="<?php echo $pendiente['titulo']; ?>" class="resumen-cover" />
									</a>

								<?php } ?>	
												
							<?php endforeach; ?>

						</div>

					</div>

			</div>