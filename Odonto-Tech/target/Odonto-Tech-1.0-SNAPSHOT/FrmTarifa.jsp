<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <h1 class="text-titles"><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Tarifas <small>ODONTO TECH</small></h1>
                </div>
                <p class="lead">Clinita odontologica ODONTO TECH,
                    proporciona diferentes especialidades ,a los pacientes,
                    como ser historial clinico, agentadar citas,
                    promocionar e informar a los pacientes
                    sobre la salud bucal e higinie.</p>
            </div>

            <div class="container-fluid">
                <ul class="breadcrumb breadcrumb-tabs">
                    <li>
                        <a href="Controller_Tarifas" class="btn btn-info">
                            <i class="zmdi zmdi-plus"></i> &nbsp; LISTA DE TARIFAS
                        </a>
                    </li>
                    <li>
                        <a href="Controller_Tarifas?action=add" class="btn btn-success">
                            <i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; REGISTRO DE TARIFAS
                        </a>
                    </li>
                </ul>
            </div>

            <!-- panel datos de la empresa -->
            <div class="container-fluid">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="zmdi zmdi-plus"></i> &nbsp; 
                        <c:if test="${accion=='nuevo'}" var="subtitulo">
                            NUEVA 
                        </c:if>
                        <c:if  test="${accion=='modificar'}" var="subitutlo">
                        MODIFICAR    
                        </c:if>
                             TARIFA
                        
                        </h3>
                    </div>
                    <div class="panel-body">
                        <form action="Controller_Tarifas" method="post" enctype="multipart/form-data">
                            <input type="hidden" name="fid" value="${tari.id}">
                            <input type="hidden" name="fid-especialidad" value="2">                      
                            <fieldset>
                                <legend><i class="zmdi zmdi-assignment"></i> &nbsp; Datos</legend>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6">
                                            <div class="form-group label-floating">
                                                <label class="control-label">Servicio *</label>
                                                <input class="form-control" type="text" name="fservicio" required value="${tari.servicio}">
                                            </div>
                                        </div>
                                        <div class="col-xs-12">
                                            <div class="form-group label-floating">
                                                <label class="control-label">Precio *</label>
                                                <input  class="form-control" type="number" step="0.01" name="fprecio" required value="${tari.precio}">
                                            </div>
                                        </div>
                                        <div class="col-xs-12">
                                            <div class="form-group label-floating">
                                                <label class="control-label">Nombre Especialidad *</label>
                                                <input class="form-control" type="text" name="fnombre-especialidad" value="${tari.nombre_especialidad}">
                                            </div>
                                        </div>
                                        <div class="col-xs-12">
                                            <div class="form-group label-floating">
                                              
                                                <button class="btn btn-info btn-raised btn-sm"> 
                                                     <input class="form-control" type="file" name="fimagen" id="img">
                                                    Subir imagen</button>
                                                <label class="form-group label-floating" id="vista">
                                                    <img src="<%=request.getContextPath()%>/ControllerWrite?table=tarifas&fid=${tari.id}"
                                                         height="250" width="250">   
                                                    
                                                </label>
                                            </div>
                                        </div>
                                     
                                    </div>
                                </div>
                            </fieldset>
                            <br>
                   
                            <br>
                            <p class="text-center" style="margin-top: 20px;">
                                <button type="submit" class="btn btn-info btn-raised btn-sm"
                                   value="${accion}" name="metodo"><i class="zmdi zmdi-floppy"></i> Guardar</button>
                            </p>
                        </form>
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
        <script src="./js/previewfile.js"></script>
        <script>
            $.material.init();
        </script>
    </body>
</html>

