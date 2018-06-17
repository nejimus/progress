	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Tablas / <?php echo $tabla; ?></li>
			</ol>
		</div><!--/.row-->

				<div class="panel panel-default">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title"><a href="index.php?accion=insert&sec=<?php echo $tabla; ?>"><button type="button" class="btn btn-sm btn-primary">Insertar registro</button></a></div>					
						</div>
		  				<div class="panel-body">
		  					<table class="table table-striped">
				              <thead>
				                <tr>
				                <?php
								SWITCH ($tabla) {
								case 'Animes':	
								?>			                
				                  <th>#</th>
				                  <th>Título</th>
				                  <th>Género</th>
				                  <th>Fuente</th>
				                </tr>
				              </thead>
				              <tbody>
				              	<?php foreach ($datos as $dato): ?>
					                <tr>
					                  <td><?php echo $dato[0]; ?></td>
					                  <td><?php echo $dato[1]; ?></td>
					                  <td><?php echo getNombreGenero($dato[5]); ?>, <?php echo getNombreGenero($dato[6]); ?></td>
					                  <td><?php echo $dato[7]; ?></td>
					                  <td>
					                  	<button type="button" class="btn btn-sm btn-warning">Editar</button>
					                  	<button type="button" class="btn btn-sm btn-danger">Borrar</button>
					                  </td>
					                </tr>
					            <?php endforeach ?> 
					            <?php
					            break;		
								case 'Comics':	
								?>			                
				                  <th>#</th>
				                  <th>Título</th>
				                  <th>Subtitulo</th>
				                  <th>Lanzamiento</th>
				                  <th>Precio</th>
				                </tr>
				              </thead>
				              <tbody>
				              	<?php foreach ($datos as $dato): ?>
					                <tr>
					                  <td><?php echo $dato[0]; ?></td>
					                  <td><?php echo $dato[1]; ?></td>
					                  <td><?php echo $dato[2]; ?></td>
					                  <td><?php echo $dato[4]; ?></td>
					                  <td><?php echo $dato[5]; ?></td>
					                  <td>
					                  	<button type="button" class="btn btn-sm btn-warning">Editar</button>
					                  	<button type="button" class="btn btn-sm btn-danger">Borrar</button>
					                  </td>
					                </tr>
					            <?php endforeach ?> 
					            <?php
					            break;						            							
								case 'Juegos':	
								?>			                
				                  <th>#</th>
				                  <th>Título</th>
				                  <th>Desarrolladora</th>
				                  <th>Lanzamiento</th>
				                  <th>Universo</th>
				                </tr>
				              </thead>
				              <tbody>
				              	<?php foreach ($datos as $dato): ?>
					                <tr>
					                  <td><?php echo $dato[0]; ?></td>
					                  <td><?php echo $dato[1]; ?></td>
					                  <td><?php echo getNombreDesarrolladora($dato[4]); ?></td>
					                  <td><?php echo transformarDataC($dato[5]); ?></td>
					                  <td><?php echo getNombreUniverso($dato[6]); ?></td>
					                  <td>
					                  	<button type="button" class="btn btn-sm btn-warning">Editar</button>
					                  	<button type="button" class="btn btn-sm btn-danger">Borrar</button>
					                  </td>
					                </tr>
					            <?php endforeach ?> 
					            <?php
					            break;
					        	}
					            ?>					               
				              </tbody>
				            </table>

						<div style="text-align: center;">
						<ul class="pagination modal-2">
						<?php
						if ($total_paginas > 1) {
							if ($page != 1)
								echo "<li><a href='index.php?accion=tablas&tabla=$tabla&page=".($page-1)."' class='prev'>&laquo</a></li>";
								for ($i = 1; $i <= $total_paginas; $i++) {
									if ($page == $i)
										echo "<li><a href='' class='active'>$i</a></li>";
									else
										echo "<li><a href='index.php?accion=tablas&tabla=$tabla&page=$i'>$i</a></li>";
								}
								if ($page != $total_paginas)
								echo "<li><a href='index.php?accion=tablas&tabla=$tabla&page=".($page+1)."' class='next'>&raquo;</a></li>";
						}
						?>
						</ul>
						</div>

		  				</div>
		  			</div>
  				</div>