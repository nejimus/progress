	<div id="myRank">
	
	  <div id="wrapp">

		<div id="header">
		
			<div id="main-header">

						<div class="logo">
							<a href="">Progress</a>									
						</div>

						<div class="mainmenu">

								<a href="anime/resumen">
									<div class="menu-sec anime <?php echo $an; ?>">Anime</div>
								</a>
										
								<a href="comics/resumen">
									<div class="menu-sec comic <?php echo $an; ?>">Cómics</div>
								</a>	

								<a href="juegos/resumen">
									<div class="menu-sec juego <?php echo $an; ?>">Juegos</div>
								</a>

								<a href="series/resumen">
									<div class="menu-sec serie <?php echo $an; ?>">Series</div>							
								</a>								

						</div>

						<div class="line"></div>

						<?php if (isset($accion)) { ?>

							<?php if ($accion=='dashboard') { ?>

								<div class="submenu">

									<span class="nick">Perfil de <?php echo $perfil['nick']; ?> #<?php echo $perfil['idUser']; ?></span>

								</div>

							<?php } ?>

							<?php if ($accion=='ficha') { ?>

								<div class="submenu">

									<?php if ($sec=='temporadas') { ?>
										<div class="smenu-sec">Series / <?php echo obtNameElement('titulo','series','id',$_REQUEST['s']); ?> / Temporada <?php echo $_REQUEST['t']; ?></div>
									<?php } else { ?>
										<div class="smenu-sec"><?php echo $sec; ?> / <?php echo obtNameElement('titulo', $tabla, $campo, $_REQUEST['id']); ?></div>
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
						   <img class="profile-icon" src="img/profiles/<?php echo $_SESSION['idUser']; ?>.png" />	
						  </button>

						  <ul class="dropdown-menu ">
						  	<?php if ($_SESSION['role'] == 'admin') { ?>
						  	  	<li><a href="admin">Admin.</a></li>
						  	<?php } ?>
						    <li><a href="dashboard/<?php echo $_SESSION['idUser']; ?>">Mi Panel</a></li>
						    <li><a href="logout">Cerrar sesión</a></li>
						  </ul>
						</div>								
				
			</div>
		
		</div>


