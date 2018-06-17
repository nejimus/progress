		<div id="contentWrapp">
			
			<div id="content">

				<div class="section">

					<div class="ficha-desc">

							<span class="ficha-title"><?php echo $titulo; ?></span>
							<span class="ficha-subtitle"><?php echo $subtitulo; ?></span>
							<span class="ficha-linea"><?php echo $linea; ?></span>
							
						<a data-fancybox="gallery" href="img/<?php echo $ruta; ?>/cover.jpg">
							<img class="ficha-cover" src="img/<?php echo $ruta; ?>/cover.jpg" title="<?php echo $titulo; ?>" />
						</a>

						<span class="<?php echo $sinopsis_tag ?>"><?php echo $descripcion; ?></span>

					</div>

					<div class="game-button" style="background-color: <?php echo $col_boton; ?>" data-toggle="modal" data-target="#exampleModalCenter">
						<span><?php echo $txt_boton; ?></span>
					</div>

					<div class="ficha-valora">

						<span class="puntuacion-tag">VALORACIÓN</span>
						<div class="score-sepa"></div>

						<span class="my-score"><?php echo $minota; ?></span>
						<span class="my-score-tag">MI NOTA</span>

						<span class="media-score"><?php echo $notamedia; ?></span>
						<span class="media-score-tag">NOTA MEDIA</span>

					</div>

					<div class="ficha-tec">

						<span class="ficha-tag">FICHA TÉCNICA</span>
						<div class="ficha-sepa"></div>

						<span class="ficha-generos-tag"><?php echo $ficha_t1; ?></span>
						<span class="ficha-generos">
							<?php if ($sec == 'anime' || $sec =='juegos' ) {
									$elements = array();	
									foreach ($generos as $genero):	
										$elements[] = getNombreGenero($genero['genero']);
									endforeach; 
									echo implode(', ', $elements);
								  } else { echo $ficha_t1_value; }
							?>	
						</span>

						<span class="ficha-desa-tag"><?php echo $ficha_t2; ?></span>
						<span class="ficha-desa"><?php echo $ficha_t2_value; ?></span>

						<span class="ficha-plata-tag"><?php echo $ficha_t3; ?></span>
						<span class="ficha-plata">
							<?php if ($sec =='juegos' ) {
									$elements = array();	
									foreach ($plataformas as $plataforma):	
										$elements[] = obtSiglasPlatf($plataforma['plataforma']);
									endforeach; 
									echo implode(', ', $elements);
								  } else { echo $ficha_t3_value; }
							?>							
						</span>

						<span class="ficha-lanz-tag"><?php echo $ficha_t4; ?></span>
						<span class="ficha-lanz"><?php echo $ficha_t4_value; ?></span>

					</div>				

					<div class="ficha-esta">

						<span class="ficha-esta-tag">MI RESUMEN</span>
						<div class="ficha-esta-sepa"></div>	

						<?php if ($seguimiento == TRUE) { ?>

							<img src="img/icons/<?php echo $empezado; ?>.svg" class="ficha-resu-begin-ico" title="Fecha inicio" />
							<img src="img/icons/<?php echo $completado; ?>.svg" class="ficha-resu-compl-ico" title="Fecha terminado" />
							<?php if ($sec =='juegos' ) { ?>
								<img src="img/icons/puzzle.svg" class="ficha-resu-plata-ico" title="Plataforma" />
								<span class="ficha-resu-plata">en <?php echo $plataf; ?></span>	
								<img src="img/icons/star.svg" class="ficha-resu-favor-ico" title="Favorito" />
								<span class="ficha-resu-favor"><?php echo $favorito; ?></span>
							<?php } else { ?>
								<img src="img/icons/star.svg" class="ficha-resu-plata-ico" title="Favorito" />
								<span class="ficha-resu-plata"><?php echo $favorito; ?></span>
							<?php } ?>
							

							<span class="ficha-resu-begin"><?php echo $empe; ?></span>
							<span class="ficha-resu-compl"><?php echo $est; ?></span>	
								

						<?php } else { ?>

							<span class="ficha-resu-nosegui">Sigue <?php echo $elemento; ?> para registar tu progreso.</span>

						<?php } ?>

					</div>

					<div class="ficha-stats">

						<span class="ficha-stats-title">ESTADÍSTICAS</span>
						<div class="ficha-stats-sepa"></div>	

					</div>

					<?php  if (isset($ficha['universo'])) { ?>

								<div class="ficha-uni">

									<span class="ficha-uni-tag">UNIVERSO</span>
									<img src="img/universos/<?php echo getNombreUniverso($ficha['universo']); ?>.jpg" class="ficha-uni-img" />
									<span class="ficha-uni-nom"><?php echo getNombreUniverso($ficha['universo']); ?></span>

								</div>

								<div class="ficha-rela">

									

								</div>						

					<?php } ?>

					<!-- Modal -->
					<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title poptit" id="exampleModalLongTitle"><?php echo $txt_boton; ?></h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">

							<div class="modal-edit">
								
								<img class="mcover" src="img/<?php echo $ruta; ?>/cover.jpg" title="<?php echo $titulo; ?>" />

								<span class="title"><?php echo $titulo; ?></span>

								<span class="tag"><?php echo $empe; ?></span>
								<span class="tag"><?php echo $est; ?></span>
								<?php if ($sec =='juegos' ) { ?>
									<span class="tag">en <?php echo $plataf; ?></span>
								<?php } ?>							
								<span class="tag"><?php echo $favorito; ?></span>
							</div>

					      </div>
					      <div class="modal-footer">
					      	<button type="button" class="btn savegame">Editar</button>
					        <button type="button" class="btn cancel" data-dismiss="modal">Cancelar</button>				        
					      </div>
					    </div>
					  </div>
					</div>							

			</div>

	</div>