<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="${pageContext.request.contextPath}/resources/css/style-responsive.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.css" rel="stylesheet" />
<title>Hibernate</title>
</head>
<style>
body{
    background: url(back.jpg);
    background-size: 100% 100%;
    background-repeat: no-repeat;
    }
</style>
<body>
<body>
<jsp:include page="header.jsp" />  
 <div class="container">

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

 
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/1.jpg" alt="1" style="width:100%;">
      </div>

      <div class="item">
        <img src="resources/images/2.jpg" alt="2" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="resources/images/3.jpg" alt="3" style="width:100%;">
      </div>
        
        <div class="item">
        <img src="resources/images/4.jpg" alt="4" style="width:100%;">
      </div>
        
        <div class="item">
        <img src="resources/images/5.jpg" alt="5" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
    </div>
    <br><br>
    <div style="height:20px; " class="row">
        <div class="col-sm-4"></div>
    </div>
    
    <div style="width: 100%;" class="row">
        
    <div align="center" class="col-sm-4">
      <img src="resources/images/m1.jpg" class="img-circle" width="204" height="186">
      <p>Dual Sim, VoLTE, 4G, 3G, Wi-Fi Quad Core, 1.25 GHz Processor 3 GB RAM, 16 GB inbuilt
         4000 mAh Battery 5.2 inches, 1280 x 720 px display 13 MP Rear + 8 MP Front Camera
		Memory Card Supported, upto 128 GB Android, v7.0
	</p>
    </div>
    <div align="center" class="col-sm-4">
      <img src="resources/images/m2.jpg" class="img-circle"  width="204" height="186">
      <p>Dual Sim, VoLTE, 4G, 3G, Wi-Fi Octa Core, 1.4 GHz Processor 2 GB RAM, 16 GB inbuilt
		4100 mAh Batter 5 inches, 720 x 1280 px display 13 MP Rear + 5 MP Front Camera 
		Memory Card (Hybrid) Android, v6.0.1</p>    
    </div>
    <div align="center" class="col-sm-4">
      <img style="vertical-align:middle" src="resources/images/m3.jpg" class="img-circle" width="204" height="186">  
      <p>Dual Sim, VoLTE, 4G, 3G, Wi-Fi Quad Core, 1.3 GHz Processor 3 GB RAM, 32 GB inbuilt 
         5000 mAh Battery 5.5 inches, 720 x 1280 px display 13 MP Rear + 5 MP Front Camera
		 Memory Card Supported, upto 128 GB
		Android, v7.1.1
	</p>
    </div>
    
  </div>
  
  </br> </br>  
  </br> </br>
  
     
    <div style="width: 100%;" class="row">
       
    <div align="center" class="col-sm-4">
      <img src="resources/images/m4.jpg" class="img-circle" width="204" height="186">
      <p>Dual Sim, VoLTE, 4G, 3G, Wi-Fi Quad Core, 1.25 GHz Processor 3 GB RAM, 16 GB inbuilt
         4000 mAh Battery 5.2 inches, 1280 x 720 px display 13 MP Rear + 8 MP Front Camera
		Memory Card Supported, upto 128 GB Android, v7.0
	</p>
    </div>
    <div align="center" class="col-sm-4">
      <img src="resources/images/m5.jpg" class="img-circle"  width="204" height="186">
      <p>Dual Sim, VoLTE, 4G, 3G, Wi-Fi Octa Core, 1.4 GHz Processor 2 GB RAM, 16 GB inbuilt
		4100 mAh Batter 5 inches, 720 x 1280 px display 13 MP Rear + 5 MP Front Camera 
		Memory Card (Hybrid) Android, v6.0.1</p>    
    </div>
    <div align="center" class="col-sm-4">
      <img style="vertical-align:middle" src="resources/images/m6.jpg" class="img-circle" width="204" height="186">  
      <p>Dual Sim, VoLTE, 4G, 3G, Wi-Fi Quad Core, 1.3 GHz Processor 3 GB RAM, 32 GB inbuilt 
         5000 mAh Battery 5.5 inches, 720 x 1280 px display 13 MP Rear + 5 MP Front Camera
		 Memory Card Supported, upto 128 GB
		Android, v7.1.1
	</p>
    </div> 
  </div>
  </div>

<style>

  .logo-small {
      color: #f4511e;
      font-size: 50px;
  }

</style>
<!-- Container (Services Section) -->
<div style="background-color: rgb(230, 230, 230);" class="container-fluid text-center">
  <h2>SERVICES</h2>
  <h4>What we offer</h4>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-off logo-small"></span>
      <h4>POWER</h4>
      <p>Best manpower quotes selected by thousands of our users!</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-heart logo-small"></span>
      <h4>LOVE</h4>
      <p>Showing customers the love and respect they deserve has never been more critical.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-lock logo-small"></span>
      <h4>JOB DONE</h4>
      <p>Choose a job you love, and you will never have to work a day in your life.</p>
    </div>
  </div>
  <br><br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-leaf logo-small"></span>
      <h4>GREEN</h4>
      <p>The future will either be green or not at all.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-certificate logo-small"></span>
      <h4>CERTIFIED</h4>
      <p>Officially recognize as possessing certain qualifications or meeting certain standards.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small"></span>
      <h4 style="color:#303030;">HARD WORK</h4>
      <p>Some people dream of success while others wake up and work hard at it.</p>
    </div>
  </div>
</div>


<!-- Container (Contact Section) -->
<div style="background-color: rgb(230, 230, 230);" class="container-fluid bg-grey">
<div class="container">
  <h2 style="margin-top: 80px;" class="text-center">CONTACT</h2>
  <div " class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> India, Ind</p>
      <p><span class="glyphicon glyphicon-phone"></span> +00 99999999</p>
      <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p> 
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div> 
    </div>
  </div>
  </div>
</div>



</body>
</html>