

<%@page import="java.util.Base64"%>
<%@page import="com.odontotech.dao.genericDAOimplements"%>
<%@page import="com.odontotech.dao.genericDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.odontotech.model.GenericClass"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    List<GenericClass> lista_pacientes = (List<GenericClass>)request.getAttribute("lista_pacientes");        
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
		
                <!-- Contenido principal -->
                
		<div class="container-fluid">
			<div class="page-header">
			  <h1 class="text-titles"><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Pacientes <small>Consultorio</small></h1>
			</div>
                    <p class="lead">En esta ocacion mostraremos lo que son los registros de los pascientes que hay en la clinica. <br>A continuacion tenemos los siguientes Registros.</p>
		</div>

		<div class="container-fluid">
			<ul class="breadcrumb breadcrumb-tabs">
			  	<li>
			  		<a href="Controller_Pacientes" class="btn btn-info">
			  			<i class="zmdi zmdi-plus"></i> &nbsp; LISTA DE PACIENTES
			  		</a>
			  	</li>
			  	<li>
			  		<a href="Controller_Pacientes?action=add" class="btn btn-success">
			  			<i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; NUEVO PACIENTE
			  		</a>
			  	</li>
			</ul>
		</div>

		<!-- panel lista de pacientes -->
		<div class="container-fluid">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; LISTA DE PASCIENTES</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-hover text-center">
							<thead>
								<tr>
									<th class="text-center">CI</th>
									<th class="text-center">NOMBRE</th>
									<th class="text-center">FECHA INICIO</th>
									<th class="text-center">DESCRIPCION</th>
									<th class="text-center">CELULAR</th>
									<th class="text-center">SERVICIO</th>
                                                                        <th class="text-center">DIRECCION</th>
                                                                        <th class="text-center">IMAGEN</th>
                                                                        <th class="text-center">EDITAR</th>
                                                                        <th class="text-center">ELIMINAR</th>
                                                                        <th class="text-center">HISTORIAL</th>
								</tr>
							</thead>
							<tbody>
                                                        <c:forEach var="paciente" items="${lista_pacientes}">
                                                            <tr>
                                                                <td>${paciente.ci}</td>
                                                                <td>${paciente.nombre}</td>
                                                                <td>${paciente.fecha_inicio}</td>
                                                                <td>${paciente.descripcion}</td>
                                                                <td>${paciente.celular}</td>
                                                                <td>${paciente.servicio}</td>
                                                                <td>${paciente.direccion}</td>
                                                                <td>
                                                                    <c:if test="${paciente.imagen ne null}">
                                                                        <img src="<%=request.getContextPath()%>/Controller_Pacientes?action=mostrarFoto&id=${paciente.ci}" style="width: 100px;"/>
                                                                    </c:if>
                                                                </td>
                                                                <td>                                                                    
                                                                    <form>
                                                                        <a href="Controller_Pacientes?action=edit&id=${paciente.ci}" class="btn btn-success btn-raised btn-xs">
                                                                            <i class="zmdi zmdi-refresh"></i>
                                                                        </a>
                                                                    </form>
                                                                </td>
                                                                <td>
                                                                    <form>                                                                        
                                                                        <a href="Controller_Historial?action=view&id=${paciente.ci}" class="btn btn-danger btn-raised btn-xs">
                                                                            <i class="zmdi zmdi-delete"></i>
                                                                        </a>
                                                                    </form>
                                                                </td>
                                                                <td>
                                                                    <form>
                                                                        <button type="submit" class="btn btn-primary btn-raised btn-xs">
                                                                            <i class="zmdi zmdi-library"></i>
                                                                        </button>
                                                                    </form>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
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