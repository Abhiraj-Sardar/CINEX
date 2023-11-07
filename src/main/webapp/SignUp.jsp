<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Panel</title>
<link rel="icon" type="images/x-icon" href="img/logo.png">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="CSS/SignUp.css">
</head>
<body>

<style>
body{
text-transform:none !important;
}
</style>

<div class="wrapper">
        <form action="User_insert" method="post">
            <div class="h5 font-weight-bold text-center mb-3">Registration</div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-user"></span></div>
                <input autocomplete="off" type="text" name="uname" class="form-control" placeholder="Name">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-envelope"></span></div>
                <input autocomplete="off" type="email" name="uemail" class="form-control" placeholder="Email">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="fas fa-phone"></span></div>
                <input autocomplete="off" type="tel" name="uphno" class="form-control" placeholder="Phone">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="fas fa-map-marker-alt"></span></div>
                <input autocomplete="off" type="text" name="ucity" class="form-control" placeholder="City">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="fas fa-venus-mars"></span></div>
                <input autocomplete="off" type="text" name="ugender" class="form-control" placeholder="Gender">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="fas fa-key"></span></div>
                <input autocomplete="off" type="password" name="upass" class="form-control" placeholder="Password">
                <div class="icon btn"><span class="fas fa-eye-slash"></span></div>
            </div>
            <div class="mb-2">
                <label class="option">Remember me
                    <input type="checkbox" checked>
                    <span class="checkmark"></span>
                </label>
            </div>
            <button style="margin-top:12px;" type="submit" class="btn btn-primary mb-3">SignUp</button>
            
            <div class="terms mb-2">
                By clicking "Signup", you acknowledge that you have read the
                <a href="#">Privacy Policy</a> and agree to the
                <a href="#">Terms of Service</a>.
            </div>
            <div class="connect border-bottom mt-4 mb-4"></div>
            <ul class="p-0 social-links">
                <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                <li><a href="#"><span class="fab fa-google"></span></a></li>
                <li><a href="#"><span class="fab fa-github"></span></a></li>
            </ul>
        </form>
    </div>
    <jsp:include page="footer.html"/>
</body>
</html>