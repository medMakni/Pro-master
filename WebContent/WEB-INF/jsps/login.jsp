<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:41:44 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="author" content="">
<title>INSPINIA | Login</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">

<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg"  onload='document.f.username.focus();'>

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

               <center> <h1 class="logo-name"><p><center> PicoSoft </center></p></h1></center>

            </div>
            
            <form class="m-t" role="form" name='f' action='${pageContext.request.contextPath}/login' method='POST'>
                
                <div class="form-group">
                    <input type="username" class="form-control" name="username" placeholder="Username" required="">
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="Password" required="">
                </div>
                <div class="form-group">
                	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</div>
                
                <button type="submit" class="btn btn-primary block full-width m-b">Login</button>

            </form>
            <p class="m-t"> <small>&copy; Med Wassim Makni & Fatma Ben Moussa  &copy; 2017</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="resources/js/jquery-2.1.1.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>

</body>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:41:44GMT -->
</html>
