	<div id="myRank">
	
	  <div id="wrapp">

		<div id="header">
		
			<div id="main-header">

						<div class="logo">
							<a href="">Progress</a>									
						</div>

						<div class="mainmenu">

							<?php if (isset($sec)) {

									switch ($sec) {

										case 'anime': $an = 'a'; $co=''; $ju=''; $se='';
										break;
										case 'cómics': $an = ''; $co='a'; $ju=''; $se=''; 
										break;
										case 'juegos': $an = ''; $co=''; $ju='a'; $se='';
										break;
										case 'series': $an = ''; $co=''; $ju=''; $se='a';
										break;		
										case 'temporadas': $an = ''; $co=''; $ju=''; $se='a';
										break;																		

									} ?>

										<a href="anime/resumen">
											<div class="menu-sec anime <?php echo $an; ?>">Anime</div>
										</a>
										<a href="comics/resumen">
											<div class="menu-sec comic <?php echo $co; ?>">Cómics</div>
										</a>	
										<a href="juegos/resumen">
											<div class="menu-sec juego <?php echo $ju; ?>">Juegos</div>
										</a>
										<a href="series/resumen">
											<div class="menu-sec serie <?php echo $se; ?>">Series</div>									
										</a>

								<?php } else { ?>

										<a href="anime/resumen">
											<div class="menu-sec anime">Anime</div>
										</a>
										<a href="comics/resumen">
											<div class="menu-sec comic">Cómics</div>
										</a>	
										<a href="juegos/resumen">
											<div class="menu-sec juego">Juegos</div>
										</a>
										<a href="series/resumen">
											<div class="menu-sec serie">Series</div>									
										</a>

								<?php } ?>

						</div>

						<div class="line"></div>

						<?php if (isset($accion)) { ?>

							<?php if ($accion=='dashboard') { ?>

								<div class="submenu">

									<span>Dashboard de invitado</span>

								</div>

							<?php } ?>

							<?php if ($accion=='ficha') { ?>

								<div class="submenu">

									<?php if ($sec=='temporadas') { ?>
										<div class="smenu-sec">Series / <?php echo obtNameElement($_REQUEST['s']); ?> / Temporada <?php echo $_REQUEST['t']; ?></div>
									<?php } else { ?>
										<div class="smenu-sec"><?php echo $sec; ?> / <?php echo obtNameElement($_REQUEST['id']); ?></div>
									<?php } ?>

								</div>

							<?php } ?>

							<?php if ($accion=='resumen') { ?>

								<div class="submenu">

									<div class="smenu-sec a">Resumen</div>
									<div class="smenu-sec">Popular</div>
									<div class="smenu-sec">Mi lista</div>

								</div>

						<?php } } else { ?>

								<div class="submenu">
									<span>Elige una sección y empieza a registrar tu progreso.</span>
								</div>

						<?php } ?>

						<div class="dropdown user-menu">
						  <button class="dropdown-toggle header-account" data-toggle="dropdown" data-hover="dropdown" data-animations="fadeIn fadeInLeft fadeInUp fadeInRight">
						   <img class="profile-icon" src="img/profiles/guest.png" />	
						  </button>
						  <ul class="dropdown-menu ">
						    <li><a href="dashboard/invitado">Dashboard</a></li>
						    <li><a href="#">Cerrar sesión</a></li>
						  </ul>
						</div>								
				
			</div>
		
		</div>


