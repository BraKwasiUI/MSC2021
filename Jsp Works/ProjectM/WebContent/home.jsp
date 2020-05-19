<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {margin: 0;}
li {
  border-right: 1px solid #bbb;
}


ul.topnav {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  
  
}

ul.topnav li {float: right;}

ul.topnav li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

ul.topnav li a:hover:not(.active) {background-color: #111;}

ul.topnav li a.active {background-color: #4CAF50;}

ul.topnav li.right {float: left;
font-weight: bold;}

@media screen and (max-width: 600px) {
  ul.topnav li.right, 
  ul.topnav li {float: none;}
}

ul.topnav li a.title {
  font-weight: bold; 
}

.hero-image {
  background-image: url("img.jpg");
  background-color: #cccccc;
  height: 650px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}
</style>
</head>
<body>

<ul class="topnav">

   <li ><a class="active" href="#about">Log Out</a></li>
   <li><a href="#news">Search Product</a></li>
  <li><a href="View.jsp">View Product</a></li>
  <li><a href="AddPro.jsp">Add Products</a></li>
  <li><a class="active" href="home.jsp">Home</a></li>
  <li class="right"><a href="home.jsp">Enterprise Management System</a></li>
</ul>


<div class="hero-image">
  <div class="hero-text">
    <h1 style="font-size:50px">Manage Inventory</h1>
    <h2>Stay Stocked</h2>
    <a href="View.jsp"><button>View Available Products</button></a>
  </div>
</div>

</body>
</html>
