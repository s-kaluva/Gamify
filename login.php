<!DOCTYPE html>
<?php
   include("config.php");
   session_start();
   $error = ".";

   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      $error = ".";

      $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
       
      $myusername = mysqli_real_escape_string($db,$_POST['username']);
      $mypassword = mysqli_real_escape_string($db,$_POST['password']); 
      
      $sql = "SELECT email_id, Password, salt FROM login WHERE email_id='$myusername' ";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      
      $count = mysqli_num_rows($result);
    
      // If email ID exists in the login table
		
      if($count == 1) {
        $salt = $row["salt"];
        $password_hash = $row["Password"];
        $myhash = hash('sha512', $mypassword . $salt);

        //If the password is correct
        if($password_hash == $myhash){
          $_SESSION['login_user'] = $myusername;
          $_SESSION['loggedin'] = true;
          header('Location: user_home.php');    
        }
        else{
          $error = "Your Login Name or Password is invalid";
        }
      }else {
         $error = "Your Login Name or Password is invalid";
      }
   }
?>


<html>
  <head>
    <title>Gamify</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="css/styles.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="login-bg">
  	<div class="header">
	     <div class="container">
	        <div class="row">
	           <div class="col-md-12">
	              <!-- Logo -->
	              <div class="logo">
	                 <h1><a href="index.php">Gamify</a></h1>
	              </div>
	           </div>
	        </div>
	     </div>
	</div>

	<div class="page-content container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">
			                <h6>Sign In</h6>
			                <div class="social">
	                            
	                        </div>
                            <form action = "" method = "post">
			                <input class="form-control" type="text" name = "username" placeholder="User Name" required>
			                <input class="form-control" type="password" name = "password" placeholder="Password" required>

                      <div class="already">
                        <p><?php if (isset($error)) echo $error ?></p>
                      </div>

			                <div class="action">
                                <input type = "submit" class="btn btn-primary signup"  value = " Sign In "/><br />
			                </div> 
                      
                            </form>        
			            </div>
			        </div>

              <div class="already">
                  <a href="forgot_password.php">Forgot Password</a>
              </div>

			        <div class="already">
			            <p>Don't have an account yet?</p>
			            <a href="user.php">Register</a>
			        </div>
			    </div>
			</div>
		</div>
	</div>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>