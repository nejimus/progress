		<div id="contentWrapp">
			
			<div id="content">
			
				<div class="portada-rec">

					<div class="quote">

						<a href=""><h1 class="title">Progress</h1></a>

						<div class="login-rec">

							<h2>Login</h2>

							<form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST">
								<input type="text" name="email" placeholder="ejemplo@mail.com" >
								<input type="password" name="password" placeholder="Contraseña" >
								<input type="submit" name="login" value="Acceder">
							</form>

							<?php 
								if(isset($errMsg)){	echo '<div style="color:#FF0000;text-align:center;font-size:17px;">'.$errMsg.'</div>'; } ?>	

						</div>

					</div>

				</div>												