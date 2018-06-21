	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="../img/profiles/<?php echo $_SESSION['idUser']; ?>.png" class="img-responsive" alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">Nejima</div>
				<div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<ul class="nav menu">
			<li><a href="index.php"><em class="fa fa-dashboard">&nbsp;</em> Portada</a></li>
			<li class="parent "><a data-toggle="collapse" href="#sub-item-1">
				<em class="fa fa-navicon">&nbsp;</em> Tablas <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="index.php?accion=tablas&tabla=Animes">
						<span class="fa fa-arrow-right">&nbsp;</span> Animes
					</a></li>					
					<li><a class="" href="index.php?accion=tablas&tabla=Comics">
						<span class="fa fa-arrow-right">&nbsp;</span> Cómics
					</a></li>				
					<li><a class="" href="index.php?accion=tablas&tabla=Juegos">
						<span class="fa fa-arrow-right">&nbsp;</span> Juegos
					</a></li>					
				</ul>
			</li>
			<li><a href="../index.php"><em class="fa fa-power-off">&nbsp;</em> Salir</a></li>
		</ul>
	</div><!--/.sidebar-->