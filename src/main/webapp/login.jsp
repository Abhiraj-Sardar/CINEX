<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="icon" type="images/x-icon" href="img/logo.png">

</head>
<body>
 <div class="wrapper">
        <div class="logo">
            <img src="img/logo.png" alt="cinex">
        </div>
        <div class="text-center mt-4 name" style="padding-left:120px;">
             Login
        </div>
        <br>
        <form Action="User_valid" method="post">
            <div class="form-field d-flex align-items-center">
                <span class="fas fa-user fa-beat-fade"></span>
                <input autocomplete="off" type="text" name="uname" id="userName" placeholder="Username" required>
            </div>
            <div class="form-field d-flex align-items-center">
                <span class="fas fa-at fa-beat-fade"></span>
                <input autocomplete="off" type="email" name="uemail" id="email" placeholder="Email" required>
            </div>
            <div class="form-field d-flex align-items-center">
                <span class="fas fa-key fa-beat-fade"></span>
                <input autocomplete="off" type="password" name="upass" id="pwd" placeholder="Password" required>
            </div>
            <button class="btn mt-3">Login</button>
        </form>
        <div class="text-center fs-6">
            <a href="#">Forget password?</a> <b style="color:white">or</b>  <a href="#">Sign up</a>
        </div>
    </div>
    <style>
 /* Importing fonts from Google */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

/* Reseting */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    background: linear-gradient(to bottom, #000428, #004683);
}

.wrapper {
    max-width: 380px;
    min-height: 500px;
    margin: 80px auto;
    padding: 40px 30px 30px 30px;
    background-color: rgb(10, 36, 58);
    border-radius: 15px;
    box-shadow: 8px 8px 8px #cbced1, -8px -8px 8px #fff;
    animation: growDown 500ms ease-in-out forwards;
    transform-origin: top center;
}

@keyframes growDown {
    0% {
        transform: scaleY(0)
    }
    80% {
        transform: scaleY(1.1)
    }
    100% {
        transform: scaleY(1)
    }
}

.logo {
    width: auto;
    margin: auto;
}

.logo img {
    width: 100%;
    height: 270px;
    object-fit: cover;
    border-radius: 0%;
    /*box-shadow: 0px 0px 3px #5f5f5f,
        0px 0px 0px 5px #ecf0f3,
        6px 6px 15px #a7aaa7,
        -6px -6px 15px #fff;*/
}

.wrapper .name {
    font-weight: 600;
    font-size: 1.4rem;
    letter-spacing: 1.3px;
    /* color:#555; */
    color: #fff;
}

.wrapper .form-field input {
    width: 100%;
    display: block;
    border: none;
    outline: none;
    background: none;
    font-size: 1.1rem;
    color: #fff;
    /* color: #666; */
    padding: 10px 15px 10px 10px;
    /* border: 1px solid red; */
}

.wrapper .form-field {
    padding-left: 10px;
    margin-bottom: 20px;
    border-radius: 20px;
    box-shadow: inset 8px 8px 8px #cbced1, inset -8px -8px 8px #fff;
}

.wrapper .form-field .fas {
    /* color: #555; */
    color: #fff;
}

.wrapper .btn {
    box-shadow: none;
    font-weight: bolder;
    text-align: center;
    font-size: large;
    width: 100%;
    height: 40px;
    background-color: #03A9F4;
    color: #fff;
    border-radius: 25px;
    box-shadow: 3px 3px 3px #b1b1b1,
        -3px -3px 3px #fff;
    letter-spacing: 1.3px;
}

.wrapper .btn:hover {
    background-color: #039BE5;
}

.wrapper a {
    text-decoration: none;
    font-size: medium;
    color: #03A9F4;
}

.wrapper a:hover {
    color: #039BE5;
}

@media(max-width: 380px) {
    .wrapper {
        margin: 30px 20px;
        padding: 40px 15px 15px 15px;
    }
}

::placeholder {
    color: whitesmoke;
    opacity: 1;
}

    </style>
</body>
</html>