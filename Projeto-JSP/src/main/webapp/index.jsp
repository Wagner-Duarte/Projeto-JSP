<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

        <title>Projeto JSP</title>

        <style type="text/css">
        
            
            .msg {
                
            }
            form{
            	background: #B0C4DE;
            }
            .imgjsp{
       			
       			border-radius: 50px;
            }
        </style>

    </head>

    <body >




<div class="">
	<img src="./assets/images/jsp.png" class="imgjsp img-fluid img-thumbnail  mx-auto d-block mt-5" height="250" width="250"  alt="...">
	</div>
        <h5 class="text-center mt-5">Bem vindo ao projeto JSP</h5>
s
        <div class="container">
            <div class="row">
                <div class="col-6 rounded mx-auto d-block">
                <div class=" ">
                    <form  class="border border-2 rounded " action="<%=request.getContextPath() %>/ServletLogin" method="post" class="row g-3 needs-validation" novalidate>

                        <input type="hidden" value="<%= request.getParameter(" url ") %>" name="url">

                        <div class="mb-3 fadeIn first col-3 text-center  rounded mx-auto d-block mt-2">
                            <label class="form-label text-center" for="login">Login:</label>
                            <input class="form-control text-center " id="login" name="login" type="text" required>
                            <div class="invalid-feedback">
                                Obrigatorio
                            </div>
                            <div class="valid-feedback">
                                OK
                            </div>
                        </div>

                        <div class="mb-3 col-3 text-center rounded mx-auto d-block">
                            <label class="form-label" for="senha">Senha:</label>
                            <input class="form-control" id="senha" name="senha" type="password" required>
                            <div class="invalid-feedback">
                                Obrigatorio
                            </div>
                            <div class="valid-feedback">
                                OK
                            </div>
                        </div>

                        <input type="submit" value="Acessar" class="rounded mx-auto d-block btn btn-primary">

                    </form>
                    </div>
                </div>
            </div>
        </div>

        <h5 class="msg text-center text-danger mt-5">${msg}</h5>
        

        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>


        <script type="text/javascript">
            //Example starter JavaScript for disabling form submissions if there are invalid fields
            (function() {
                'use strict'

                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.querySelectorAll('.needs-validation')

                // Loop over them and prevent submission
                Array.prototype.slice.call(forms)
                    .forEach(function(form) {
                        form.addEventListener('submit', function(event) {
                            if (!form.checkValidity()) {
                                event.preventDefault()
                                event.stopPropagation()
                            }

                            form.classList.add('was-validated')
                        }, false)
                    })
            })()
        </script>
    </body>

    </html>