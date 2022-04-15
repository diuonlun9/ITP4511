<%-- 
    Document   : index
    Created on : 14 Apr 2022, 5:19:58 pm
    Author     : ronal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link rel="stylesheet" href="style.css" />
    <title>Dream Gym Limited</title>
    <!-- jquery -->

    
  </head>
  <body>
      <div style="max-width:100%;max-height: 100%;overflow: hidden;">
    
                    <div class ="row content text-center" style="margin:auto;padding:300px;">

                            <div class = "col-md-6" style = "max-width: 500px;min-width:500px;margin: auto; border-radius: 2px;padding:20px">
                                <div>
                                    <img src = "img/dumbell.png" class = "img-fluid" style="max-width: 100px;">
                                </div>
                                <h3 class = "signin-text mb-3">Dream Gym Limited</h3>
                                <form action="loginController" method="post" >
                                    <input type="hidden" name="action" value="authenticate"/>
                                    <div class="form-group text-center" >
                                        <input  name="username" value="" placeholder="username" id="name" class="form-control  " style="margin-bottom: 10px;">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password"  id="password" class="form-control " placeholder="Password"style="margin-bottom: 10px;">
                                    </div>
                                    

                                    <button type="submit" class="btn btn-primary mb-3"><span class="fa fa-check"></span> Login</button>
                                
                                </form>
                            </div>
                    </div>
                </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

  </body>
</html>

