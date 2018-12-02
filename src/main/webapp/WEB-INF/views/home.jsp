<%@taglib tagdir="/WEB-INF/tags" prefix="mytags"%>

<html>
<head>
<title>Home</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/homeStyle.css"
	type="text/css">

<mytags:style />

</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
            
                <a class="nav-link" href="home.htm">Mahavir Cloths</a>
            </li>
           
            <li class="nav-item">
                <a class="nav-link" href="home.htm">Home</a>
            </li>
         
        </ul>
    </div>
  
    <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
        <ul class="navbar-nav ml-auto">
          
            <li class="nav-item">
                <a class="nav-link" href="#"><span class="fa fa-sign-out"></span>Logout</a>
            </li>
        </ul>
    </div>
</nav>


<form action="home.htm" method="post">
	<div class="container">
		<div class="row mainRow">
			
				<div class="col-6 colum ">
					<div class="card colBody shadow p-3 mb-5 bg-white rounded"
						style="width: 400px">
						<img class="card-img-top image"
							src="${pageContext.request.contextPath}/images/back.jpg"
							alt="Card image">
						<div class="card-body">
							<h4 class="card-title">Entry</h4>
							<p class="card-text">This button will let you generate the
								data entry for different holders and items</p>
							<button type ="submit" class="btn btn-primary" name="dataentry" value="dataentry">Data Entry</button>
						</div>
					</div>
				</div>
				<div class="col-6 colum ">
					<div class="card colBody shadow p-3 mb-5 bg-white rounded"
						style="width: 400px">
						<img class="card-img-top image"
							src="${pageContext.request.contextPath}/images/back2.jpg"
							alt="Card image">
						<div class="card-body">
							<h4 class="card-title">Report Generation</h4>
							<p class="card-text">This button will take you to the page of
								repoert generation</p>
							<button type = "submit" class="btn btn-primary" name="report" value="report">Report</button>
						</div>
					</div>
				</div>
			
		</div>
	</div>
</form>
	<mytags:script />

</body>
</html>