
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
                        <h1 class="text-titles"><i class="zmdi zmdi-case zmdi-hc-fw"></i> Especialidades <small>Consultorio</small></h1>
                    </div>
                    <p class="lead">Ingrese los datos en los campos</p>
                </div>

                <div class="container-fluid">
                    <ul class="breadcrumb breadcrumb-tabs">
                        <li>
                            <a href="Controller_especialidades" class="btn btn-info">
                                <i class="zmdi zmdi-plus"></i> &nbsp; LISTA DE ESPECIALIDADES
                            </a>
                        </li>
                        <li>
                            <a href="FrmEspecialidades.jsp" class="btn btn-success">
                                <i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; NUEVA ESPECIALIDAD
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- panel datos de la empresa -->
                <div class="container-fluid">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="zmdi zmdi-plus"></i> &nbsp; DATOS DE LA EMPRESA</h3>
                        </div>
                        <div class="panel-body">
                            <form action="Controller_especialidades" method="POST" enctype="multipart/form-data">
                                <fieldset>
                                    <legend><i class="zmdi zmdi-assignment"></i> &nbsp; Datos basicos</legend>
                                    <div class="container-fluid">
                                        <div class="row">
                                            <input type="hidden" name="id" value="${esp.id}">
                                        
                                        <div class="col-xs-12">
                                            <div class="form-group label-floating">
                                                <label class="control-label">Ingrese su Nombre</label>
                                                <input class="form-control" type="text" name="nombre_especialidad" required="" maxlength="30" value="${esp.nombre_especialidad}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>                            
                            <br>
                            <br>
                            <p class="text-center" style="margin-top: 20px;">
                                <button type="submit" class="btn btn-info btn-raised btn-sm"><i class="zmdi zmdi-floppy"></i> Guardar Especialidad</button>
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
        <script>
            $.material.init();
        </script>
    </body>
</html>

