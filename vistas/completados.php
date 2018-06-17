
		<div id="acceso">
			<span class="minibar"><a href="index.php">Inicio</a> / <a href="index.php?accion=<?php echo $sec; ?>"><?php echo $sec; ?></a> / Completados</span>
		</div>

		<div id="contentWrapp">
			
			<div id="content">
			
				<div class="left-column">

					<article class="<?php echo $sec; ?>">
						
						<?php
								
							SWITCH ($sec) {
								case 'anime':
						?>
						<h3 class="widget-title2 anime">
							<span class="tdata">Fecha</span>
							<span class="ttitle">Titulo</span>
							<span class="tgenre">Plataforma</span>
							<span class="tnote">Nota</span>
						</h3>
						<?php foreach ($ultimos as $ultimo): 
						
							$titulo_a = str_replace("/", "-", $ultimo['titulo']);	
							if ($ultimo['puntuacion'] > 89) {
								$notec = '#9bb80e';
							}							
							if ($ultimo['puntuacion'] < 90) {
								$notec = '#42b0e3';
							}
							if ($ultimo['puntuacion'] < 74) {
								$notec = '#fc3';
							}																					
						
						?>
						
						<div class="review-list">
							<div class="data"><?php echo transformarDataC($ultimo['fecha']); ?></div>
							<div class="title"><a class="anime" href="index.php?accion=ficha&sec=anime&id=<?php echo $ultimo['id']; ?>"><?php echo recortar_texto($titulo_a,50); ?></a></div>
							<span class="genre"><?php echo $ultimo['fuente']; ?></span>
							<div class="note">	
								<span class="metascore_w small game positive" style="color:<?php echo $notec; ?>;"><?php echo $ultimo['puntuacion']; ?></span>
							</div>							
						</div>						

						<?php endforeach; ?>
							
						<?php	break;
								case 'series':
						?>
						<h3 class="widget-title2 series">
							<span class="tdata">Fecha</span>
							<span class="ttitle">Titulo</span>
							<span class="s_caps">Caps.</span>
							<span class="s_nota">Nota</span>
						</h3>
						<?php foreach ($ultimos as $ultimo): 
						
							$titulo_a = str_replace("/", "-", $ultimo['titulo']);	
							if ($ultimo['puntuacion'] > 89) {
								$notec = '#9bb80e';
							}							
							if ($ultimo['puntuacion'] < 90) {
								$notec = '#42b0e3';
							}
							if ($ultimo['puntuacion'] < 74) {
								$notec = '#fc3';
							}													
						?>

						<div class="review-list">
							<div class="data"><?php echo transformarDataC($ultimo['fecha']); ?></div>
							<div class="title">
								<a class="series" href="index.php?accion=ficha&sec=series&id=<?php echo $ultimo['cod_ser']; ?>"><?php echo $ultimo['titulo']; echo " T".$ultimo['temporada']; ?></a>
							</div>
							<div class="caps"><?php echo $ultimo['capitulos']; ?></div>
							<div class="note">	
								<span class="metascore_w small game positive" style="color:<?php echo $notec; ?>;"><?php echo $ultimo['puntuacion']; ?></span>
							</div>
						</div>							 

						<?php endforeach; ?>
						
						<?php	break;
								case 'juegos':
						?>
						<h3 class="widget-title2 juegos">
							<span class="tdata">Fecha</span>
							<span class="ttitle">Titulo</span>
							<span class="tgenre">Plataforma</span>
							<span class="tnote">Nota</span>
						</h3>
						<?php foreach ($ultimos as $ultimo): 				
							$titulo_a = str_replace(":", " -", $ultimo['titulo']);
							$titulo_o = str_replace(":", " -", $ultimo['title']);
							if ($ultimo['puntuacion'] > 89) {
								$notec = '#6c3';
							}							
							if ($ultimo['puntuacion'] < 90) {
								$notec = '#42b0e3';
							}
							if ($ultimo['puntuacion'] < 74) {
								$notec = '#fc3';
							}							
						?>

						<div class="review-list">
							<div class="data"><?php echo transformarDataC($ultimo['fecha']); ?></div>
							<div class="title"><a href="index.php?accion=ficha&sec=juegos&id=<?php echo $ultimo['idJuego']; ?>"><?php echo $titulo_a; ?></a></div>
							<span class="genre" style="color:<?php echo colorPlataforma($ultimo[11]); ?>;"><?php echo $ultimo[11]; ?></span>
							<div class="note">	
								<span class="metascore_w small game positive" style="color:<?php echo $notec; ?>;"><?php echo $ultimo['puntuacion']; ?></span>
							</div>
						</div>	

						<?php endforeach; ?>
								
						<?php	break;	
						
							}
								
						?>	
						<div style="text-align: center;">
						<ul class="pagination modal-2 <?php echo $sec; ?>">
						<?php
						if ($total_paginas > 1) {
							if ($page != 1)
								echo "<li><a href='index.php?accion=completados&sec=".$sec."&page=".($page-1)."' class='prev'>&laquo</a></li>";
								for ($i = 1; $i <= $total_paginas; $i++) {
									if ($page == $i)
										echo "<li><a href='' class='active'>$i</a></li>";
									else
										echo "<li><a href='index.php?accion=completados&sec=".$sec."&page=$i'>$i</a></li>";
								}
								if ($page != $total_paginas)
								echo "<li><a href='index.php?accion=completados&sec=".$sec."&page=".($page+1)."' class='next'>&raquo;</a></li>";
						}
						?>
						</ul>
						</div>
						
					</article>
					
				</div>	