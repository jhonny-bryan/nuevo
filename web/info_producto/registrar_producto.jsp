<%-- 
    Document   : registrar_producto
    Created on : 10/11/2020, 06:45:40 PM
    Author     : Nicol Samanamud 
--%>

<%@page import="logica.logica_categoria"%>
<%@page import="datos.categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" type="text/css" href="../diceno/css/bootstrap.min.css">


        <link rel="stylesheet" type="text/css" href="../diceno/css/menu_principal.css">
        <%-- despegable movivble y adaptable--%>
        <link rel="stylesheet" href="../diceno/css/css_des/app.css"/> 



        <link href="../diceno/css/navbar.css" rel="stylesheet">

        <script src="../diceno/js/jquery-3.5.1.min.js"></script>
        <script src="../diceno/js/popper.min.js"></script>
        <script src="../diceno/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../diceno/css/css_des/pure-drawer.css"/>

        <script src="../diceno/js/jquery-3.5.1.slim.min.js"></script>
        <script src="../diceno/js/bootstrap.bundle.min.js"></script>
        <%--  categoria--%>

        <link rel="stylesheet" type="text/css" href="../diceno/css/slick/slick.css">
        <link rel="stylesheet" type="text/css" href="../diceno/css/slick/slick-theme.css">


        <script src="../diceno/js/jquery-2.2.0.min.js" type="text/javascript"></script>
        <script src="../diceno/css/slick/slick.js" type="text/javascript" charset="utf-8"></script>
        <link href="../diceno/css/navbar-top-fixed.css" rel="stylesheet">     

        <%--caja de texto--%>

        <link rel="stylesheet" href="../diceno/css/caja_text.css">

        <link rel="stylesheet" href="../diceno/css/ProductoMostrar.css">

    </head>
    <script type="text/javascript">

        function validarExt()
        {
            var archivoInput = document.getElementById('archivoInput');
            var archivoRuta = archivoInput.value;
            var extPermitidas = /(.jpg)$/i;
            if (!extPermitidas.exec(archivoRuta)) {
                alert('Asegurese de haber seleccionado un JPG');
                archivoInput.value = '';
                return false;
            } else
            {
                //PRevio de la imagen
                if (archivoInput.files && archivoInput.files[0])
                {
                    var visor = new FileReader();
                    visor.onload = function (e)
                    {
                        document.getElementById('visorArchivo').innerHTML =
                                '<embed src="' + e.target.result + '" width="300" height="300" />';
                    };
                    visor.readAsDataURL(archivoInput.files[0]);
                }
            }
        }
    </script>
    <body>
        <div class="container-fluid">
            <%
                /*  String cliente_id;
                HttpSession sesion = request.getSession();
                cliente_id = sesion.getAttribute("cliente_id").toString();
                 */
                //out.print(cliente_id);
                /* categoria temp1 = new categoria();
                logica.logica_categoria con1 = new logica_categoria();*/
            %>


            <!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
            <div class="row">
                <nav class="navbar navbar-expand-md navbar-dark fixed-top" style="background-color:#FFAA2E  ">

                    <div class="col-4 col-sm-2 col-md-2 col-lg-2 col-xl-2" style="left:40px">

                        <div class="pure-container" data-effect="pure-effect-push">


                            <input type="checkbox" id="pure-toggle-left" class="pure-toggle" data-toggle="left"/>

                            <label class="pure-toggle-label" for="pure-toggle-left" data-toggle-label="left" style="width: 50px; height:  50px;"  > <span class="pure-toggle-icon" ></span> </label>

                            <div >
                                <a href="../menu_principal/menu_principal_trabajador.jsp"><img src="../imagenes/logo.png" width="100" height="60" /> </a>  

                            </div>

                            <nav class="pure-drawer" data-position="left" style="background:  #F38500;">

                                <br>
                                <br>
                                <br>


                                <div class="nav-primary">


                                </div> 
                            </nav>

                            <label class="pure-overlay" for="pure-toggle-left" data-overlay="left"></label> 
                        </div>  


                    </div>

            </div>
        </nav>


    </div>

    <br>
    <br>
    <br>
    <br>
    <br>


    <form action="../controlador?accion=Guardar" method="POST" enctype="multipart/form-data">

        <div class="container">
            <div class="row">


                <div class="col-6">

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Nombre</span>
                        </div>
                        <input type="text" class="form-control" placeholder="Nombre" name="nombre">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Precio S/.</span>
                        </div>
                        <input type="number" class="form-control" placeholder="Precio" name="precio" step="0.01">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Caracteristica</span>
                        </div>
                        <textarea type="text" class="form-control" placeholder="Caracteristica" name="caracteristica" ></textarea>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Descripcion</span>
                        </div>
                        <textarea type="text" class="form-control" placeholder="Descripcion" name="descripcion" ></textarea>
                    </div>

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Categoria</span>
                        </div>
                        <select name="categoria" class="form-control">
                            <%  categoria temp1 = new categoria();
                                logica.logica_categoria con1 = new logica_categoria();
                                con1.consultarDep();
                            %>
                            <%
                                for (int i = 0; i < logica_categoria.logica_categoria.size(); i++) {
                                    temp1 = (categoria) logica_categoria.logica_categoria.get(i);

                            %>
                            <option value="<%=temp1.getCategoria_id()%>"><%=temp1.getCategoria_nombre()%></option>

                            <%}%>

                        </select>
                    </div>

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Peso</span>
                        </div>
                        <input type="number" class="form-control" placeholder="Peso" name="peso">

                        <select name="tipo_peso" class="form-control">
                            <option>Seleccione</option>
                            <option>Gr</option> 
                            <option>Kg</option> 
                            <option>Lt</option>

                        </select>
                    </div>
                </div>

                <div class="col-6">

                    <section class="text-center" >
                        <div id="visorArchivo">
                            <img src="../imagenes/agregar.png" width="300" height="300" alt="agregar"/>

                        </div> 
                        <br><br>
                        <input type="file" id="archivoInput" class="col-md-offset-4 col-md-4" onchange="return validarExt()" name="imagen"/>

                    </section>
                </div>

            </div>

        </div>




        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>

                        <button  class="btn" style="background: #CE6100; color: #ffffff" name="accion" value="Guardar">Guardar</button> 

                    </center>
                </div>
            </div>
        </div> 
    </form>


    <br><br>





</body>
</html>