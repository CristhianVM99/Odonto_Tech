<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="com.odontotech.model.GenericClass"%>
<%@page import="java.util.List"%>
<%
    List <GenericClass> Lista_Especialidad = (List<GenericClass>) request.getAttribute("Lista_especialidad");
%>
<!DOCTYPE html>
<html lang="es">
<head>
	<title>Empresa</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="./css/main.css">
</head>
<body>
	<!-- Menu -->
        <jsp:include page="META-INF/Menu.jsp"></jsp:include>

	<!-- Content page-->
	<section class="full-box dashboard-contentPage">
		<!-- NavBar -->
		<nav class="full-box dashboard-Navbar">
			<ul class="full-box list-unstyled text-right">
				<li class="pull-left">
					<a href="#!" class="btn-menu-dashboard"><i class="zmdi zmdi-more-vert"></i></a>
				</li>
				<li>
					<a href="search.html" class="btn-search">
						<i class="zmdi zmdi-search"></i>
					</a>
				</li>
			</ul>
		</nav>
		<!-- Content page -->
		<div class="container-fluid">
			<div class="page-header">
			  <h1 class="text-titles"><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Administraci�n <small>EMPRESA</small></h1>
			</div>
			<p class="lead">En esta intefaz se puede observar las especialidades</p>
		</div>

		<div class="container-fluid">
			<ul class="breadcrumb breadcrumb-tabs">
			  	<li>
			  		<a href="Controller_especialidades" class="btn btn-info">
			  			<i class="zmdi zmdi-plus"></i> &nbsp; LISTA DE ESPECIALIDADES
			  		</a>
			  	</li>
			  	<li>
			  		<a href="Controller_especialidades?option=add" class="btn btn-success">
			  			<i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; NUEVA ESPECIALIDAD
			  		</a>
			  	</li>
			</ul>
		</div>

		<!-- panel lista de empresas -->
		<div class="container-fluid">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; LISTA DE EMPRESAS</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-hover text-center">
							<thead>
								<tr>
									<th class="text-center">ID</th>
									<th class="text-center">NOMBRE ESPECIALIDAD</th>
									<th class="text-center">EDITAR</th>
									<th class="text-center">ELIMINAR</th>
									
								</tr>
							</thead>
							<tbody>
                                                        <c:forEach var="especialidad" items="${Lista_especialidad}">
                                                            <tr>
                                                                <td>${especialidad.id}</td>
                                                                <td>${especialidad.nombre_especialidad}</td>
                                                                <td>                                                                    
                                                                    <form>
                                                                        <a href="Controller_especialidades?option=edit&id=${especialidad.id}" class="btn btn-success btn-raised btn-xs">
                                                                            <i class="zmdi zmdi-refresh"></i>
                                                                        </a>
                                                                    </form>
                                                                </td>
                                                                <td>
                                                                    <form>
                                                                        <a href="Controller_especialidades?option=kill&id=${especialidad.id}" class="btn btn-danger btn-raised btn-xs">
                                                                            <i class="zmdi zmdi-delete"></i>>
                                                                            
                                                                        </a>
                                                                    </form>
                                                                </td>
                                                            </tr>
                                                </c:forEach>
							</tbody>
						</table>
					</div>
					<nav class="text-center">
						<ul class="pagination pagination-sm">
							<li class="disabled"><a href="javascript:void(0)">«</a></li>
							<li class="active"><a href="javascript:void(0)">1</a></li>
							<li><a href="javascript:void(0)">2</a></li>
							<li><a href="javascript:void(0)">3</a></li>
							<li><a href="javascript:void(0)">4</a></li>
							<li><a href="javascript:void(0)">5</a></li>
							<li><a href="javascript:void(0)">»</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		
	</section>

	<!--====== Scripts -->
	<script src="./js/jquery-3.1.1.min.js"></script>
	<script src="./js/sweetalert2.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/material.min.js"></script>
	<script src="./js/ripples.min.js"></script>
	<script src="./js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="./js/main.js"></script>
	<script>
		$.material.init();
	</script>
</body>
</html>

<%

/*
    <tr>
									<td>1</td>
									<td>1243567890</td>
									<td>EL SALVADOR</td>
									<td>bibliotecasv@gmail.com</td>
									<td>
										<a href="#!" class="btn btn-success btn-raised btn-xs">
											<i class="zmdi zmdi-refresh"></i>
										</a>
									</td>
									<td>
										<form>
											<button type="submit" class="btn btn-danger btn-raised btn-xs">
												<i class="zmdi zmdi-delete"></i>
											</button>
										</form>
									</td>
								</tr>
								<tr>
									<td>2</td>
									<td>9876543212</td>
									<td>EE.UU</td>
									<td>bibliotecaeeuu@gmail.com</td>
									<td>
										<a href="#!" class="btn btn-success btn-raised btn-xs">
											<i class="zmdi zmdi-refresh"></i>
										</a>
									</td>
									<td>
										<form>
											<button type="submit" class="btn btn-danger btn-raised btn-xs">
												<i class="zmdi zmdi-delete"></i>
											</button>
										</form>
									</td>
								</tr>
    */

%>