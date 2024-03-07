<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Bootstrap Multi-level Off-canvas Menu Template 5 Example</title>





<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="style5.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
<style type="text/css">

.navbar{
   background-color:#46586C;
    opacity:0.8;
    
}
.navbar-brand {
     font-family: 'Elephant';
    margin-top:-5px;
}
ul li 
{

font-family: 'Castellar';

}
ul li a:hover
  {
      
      padding: 5px;

    }
    img{
    
    width:30px;
    }
    
    
    .kp1 {

            margin: 0;
            padding: 0;
            display: flex;
            
            justify-content: center;
            align-items: center;
          
            font-family: Imprint MT Shadow;
        }
 
        /* styling the button*/
      .kp1 {
     
           
            display: inline-block;
            color: #008000;
            letter-spacing: 2px;
            text-transform: uppercase;
            text-decoration: none;
            
            overflow: hidden;
        }
 
        /*creating animation effect*/
     .kp1:hover {
            color: #111;
            background: red;
            box-shadow: 0 0 50px #39ff14;
        }



 
    
</style>
</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-dark fixed-top ">
  <div class="container-fluid" >
    <a class="navbar-brand" href="index.jsp"data-tilt data-tilt-scale="1.1"><img src="h1.png">  Sai Shindhu Hospital</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
 
        <li class="nav-item">
          <a class="nav-link  btn-outline-dark btn-sm text-white kp1 " aria-current="page" href="index.jsp" >HOME</a>
        </li>
        
        <li class="nav-item">
          <a  class="nav-link  btn-outline-dark btn-sm text-white kp1" aria-current="page" href="doctor.jsp">DOCTOR</a>
        </li>
        
        <li class="nav-item">
          <a  class="nav-link btn-outline-dark btn-sm text-white kp1 " aria-current="page" href="View_Doct.jsp">VIEW_DOCTOR</a>
        </li>
         <li class="nav-item">
          <a  class="nav-link btn-outline-dark btn-sm text-white kp1 " aria-current="page" href="../doctor/patient.jsp">PATIENT</a>
        </li>
				
        
      </ul>
     

		
    <form class="d-flex col-md-2 "  >
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="#">EditProfile</a></li>
						<li><a class="dropdown-item" href="../adminlogout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
<script src="./index.js"></script>
    



            
            
    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $(this).toggleClass('active');
            });
        });
    </script>
    <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<script>
try {
  fetch(new Request("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", { method: 'HEAD', mode: 'no-cors' })).then(function(response) {
    return true;
  }).catch(function(e) {
    var carbonScript = document.createElement("script");
    carbonScript.src = "//cdn.carbonads.com/carbon.js?serve=CK7DKKQU&placement=wwwjqueryscriptnet";
    carbonScript.id = "_carbonads_js";
    document.getElementById("carbon-block").appendChild(carbonScript);
  });
} catch (error) {
  console.log(error);
}
</script>
</body>

</html>
