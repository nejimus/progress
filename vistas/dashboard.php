		<div id="contentWrapp">
			
			<div id="content">

				<div class="section">

					<div class="profile-rec">

						<img src="img/profiles/<?php echo $perfil['idUser']; ?>.png" />
						<h3><?php echo $perfil['nick']; ?></h3>
						<h4>#<?php echo $perfil['idUser']; ?></h4>

						<div class="line-v"></div>

						<p><?php echo $perfil['descrip']; ?></p>

						<span class="twitter"><?php echo $perfil['twitter']; ?></span>

					</div>

					<div class="progress-rec">
						<h3>Progreso</h3>

						<div class="comp-bar">
							<div class="complete" style="width:<?php echo $por_com; ?>%"></div>
						</div>
						<span class="portag">COMPLETOS</span>
						<span class="porcentaje"><?php echo $por_com; ?>%</span>

						<div class="comp-bar">
							<div class="complete" style="width:<?php echo $por_pro; ?>%"></div>
						</div>
						<span class="portag">EN PROCESO</span>
						<span class="porcentaje"><?php echo $por_pro; ?>%</span>

						<div class="comp-bar">
							<div class="complete" style="width:<?php echo $por_pen; ?>%"></div>
						</div>
						<span class="portag">PENDIENTES</span>
						<span class="porcentaje"><?php echo $por_pen; ?>%</span>

						<div class="progress-cat">
							<span>GENERAL</span>
							<span>ANIME</span>
							<span>CÓMICS</span>
							<span class="active">JUEGOS</span>
							<span>SERIES</span>
						</div>										

					</div>

					<div class="triangle"></div>

					<?php foreach ($eventos as $evento): ?>
						<div class="bubble">
						<?php
							SWITCH ($evento['estado']) {
								case 'Completado':
						?>
								<k><?php echo transformarDataC($evento['hora']); ?></k>
								<span>ha completado 
									<a class="f-elem" href="juegos/<?php echo $evento['cod_jue']; ?>"><?php echo obtNameElement('titulo', 'juegos', 'idJuego', $evento['cod_jue']); ?></a>
								</span>
								<a href=""><img src="img/icons/share-alt.svg" /></a>
						<?php	break;
								case 'Jugando':
						?>		
								<k><?php echo transformarDataC($evento['hora']); ?></k>
								<span>ha empezado a jugar a 
									<a class="f-elem" href="juegos/<?php echo $evento['cod_jue']; ?>"><?php echo obtNameElement('titulo', 'juegos', 'idJuego', $evento['cod_jue']); ?></a>
								</span>
								<a href=""><img src="img/icons/share-alt.svg" /></a>
						<?php	break;
								case 'Pendiente':
						?>
								<k><?php echo transformarDataC($evento['hora']); ?></k>					
								<span>está siguiendo 
									<a class="f-elem" href="juegos/<?php echo $evento['cod_jue']; ?>"><?php echo obtNameElement('titulo', 'juegos', 'idJuego', $evento['cod_jue']); ?></a>
								</span>
								<a href=""><img src="img/icons/share-alt.svg" /></a>
						<?php   break; } ?>							
						</div>
					<?php endforeach; ?>													

					<div class="last-complete">
						<h3>Último completado</h3>
						<?php if ($ultimo[0] != null) { ?>
							<a href="juegos/<?php echo $ultimo[0]; ?>">
								<img src="img/juegos/<?php echo $ultimo[0]; ?>/banner.jpg" />
							</a>
						<?php } else { ?>
							<img src="img/juegos/0/banner.jpg" />
						<?php } ?>
						<div class="lasttitle"><?php echo $lasttitle; ?></div>
					</div>

				</div>

			</div>