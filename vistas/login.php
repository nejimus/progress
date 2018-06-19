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
								<input type="submit" value="Acceder">
							</form>

							<div style = "font-size:16px; color:#cc0000;"><?php echo isset($error) ? utf8_decode($error) : '' ; ?></div>		

						</div>

					</div>

				</div>												