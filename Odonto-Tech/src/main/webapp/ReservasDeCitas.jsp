

<%@page import="com.odontotech.dao.genericDAOimplements"%>
<%@page import="com.odontotech.dao.genericDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.odontotech.model.GenericClass"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    List<GenericClass> lista_reservas = (List<GenericClass>)request.getAttribute("lista_reservas");        
%>
<!DOCTYPE html>
<html lang="es">
<head>
	<title>Odonto Tech | Reserva de Citas</title>
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
		
                <!-- Contenido principal -->
                
		<div class="container-fluid">
			<div class="page-header">
			  <h1 class="text-titles"><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Reserva De Citas <small>Consultorio</small></h1>
			</div>
                    <p class="lead">En esta seccion veremos todas las reservas de citas que hay que se envian desde la pagina principal <br> como consultas tenemos las siguientes:</p>
		</div>

		<div class="container-fluid">
			<ul class="breadcrumb breadcrumb-tabs">
			  	<li>
			  		<a href="Controller_Reserva_De_Citas" class="btn btn-info">
			  			<i class="zmdi zmdi-plus"></i> &nbsp; LISTA DE RESERVAS DE CITAS
			  		</a>
			  	</li>
			</ul>
		</div>

		<!-- panel lista de citas -->
		<div class="container-fluid">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; LISTA DE RESERVA DE CITAS</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-hover text-center">
							<thead>
								<tr>
									<th class="text-center">ID</th>
									<th class="text-center">NOMBRE PASCIENTE</th>
									<th class="text-center">DESCRIPCION</th>
									<th class="text-center">FECHA</th>
									<th class="text-center">HORA</th>
									<th class="text-center">CELULAR</th>
                                                                        <th class="text-center">ESPECIALIDAD</th>
                                                                        <th class="text-center">SERVICIOS</th>
                                                                        <th class="text-center">EDITAR</th>
                                                                        <th class="text-center">ELIMINAR</th>
								</tr>
							</thead>
							<tbody>
                                                            <tr>
                                                                <%
                                                                    
                                                                    for (GenericClass cl : lista_reservas) {
                                                                            String[] val = cl.getToString();
                                                                            for (int i = 2; i < val.length; i=i+2) 
                                                                            {
                                                                            if(i!=14)
                                                                            {
                                                                            
                                                                %> 
                                                                <td><%= val[i]%></td>
                                                                <%          
                                                                            }
                                                                            }          
                                                                    }
                                                                %>  
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
							</tbody>
						</table>
					</div>
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