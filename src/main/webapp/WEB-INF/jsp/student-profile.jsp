<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- Bootstrap CSS -->
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css'>
 

 <head> 
	 <link href="<c:url value="/resources/myCss.css" />" rel="stylesheet">
	<title>Candidate Profile</title>
	<link rel="stylesheet"  href="css/student-profile.css"> 
	
 </head> 

   <link rel="stylesheet" href="https://rawgit.com/creativetimofficial/material-kit/master/assets/css/material-kit.css">
</head>
 <body> 
 

 
 
 <form method="post" >
 
 <div style="display: flex; background-color: #012345">
    <div style="float:left;">
        <img style="margin-left: 10%; margin-top:2px;padding-right: -10px;padding-top: -7px;padding-bottom: 8px; width: 80px;height: 80px" src="https://i.pinimg.com/originals/ef/ab/45/efab45ba636c95d3900d3014c5adf82d.png">
    </div>

    <div style=" margin-left: 1%; display: inline-block">
        <p style="color: white; font-size: 20px; padding-top: 10% "><b>Student Enrollment Platform</b></p>
    </div>
</div>
 
	  <div class="sidebar" style="float: left;">
		  <a href="/"><img src="https://icons.iconarchive.com/icons/papirus-team/papirus-apps/128/gargoyle-house-icon.png" width=24> Home</a>
		  <a href="/enrollment"><img src="https://icons.iconarchive.com/icons/icons-land/vista-multimedia/128/Play-1-Disabled-icon.png" width=24> Enroll</a>
		  <a href="/login"><img src="https://flaticons.net/icon.php?slug_category=mobile-application&slug_icon=logout" width=24> Logout</a>
	</div>
		 
	<div class="container" style="display: inline-block; margin-left: 5%">
	
<div class="row gutters">
	<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
		<div class="card h-20">		
			<div class="card-body">			
				<div class="account-settings">				
					<div class="user-profile">					
						<div class="user-avatar">						
							<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="Maxwell Admin">
						</div>						
						<h5 class="user-name">${student.name}   ${student.surname}</h5>
						<%-- <h6 class="user-email">${student.email}</h6> --%>
					</div>
					<div class="about">
												
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-9 col-lg-9 col-md-12 col-sm-5 col-12">
		<div class="card h-20">
			<table class="table ">
					<%-- <caption style="width: 400px; margin-left: 20px;">Submitted applications: </caption> --%>
					<thead>
					<tr>
						<th style="font-size: 18px">Personal Info</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<th style="font-size: 15px"><img src="https://icons.iconarchive.com/icons/wwalczyszyn/android-style/128/Mail-icon.png"  width="24"> E-mail</th>
						<td>${student.email}</td>
					</tr>
						
					<tr>
						<th style="font-size: 15px"><img src="https://icons.iconarchive.com/icons/artdesigner/urban-stories/128/House-icon.png" width="24"> Address</th>
						<td>${student.address}</td>
					<tr>
					<tr>
						<th style="font-size: 15px"><img src="https://icons.iconarchive.com/icons/custom-icon-design/pretty-office-7/128/Calendar-icon.png" width="24"> Age</th>
						<td>${student.age}</td>
					<tr>
				
					</tbody>
				</table>
			</div>
		
	</div>
<div class="col-xl-7 col-lg-7 col-md-12 col-sm-5 col-12">
	<div class="card h-100 " style="margin-top: -2%">
	<table class="table ">
					<%-- <caption style="width: 400px; margin-left: 20px;">Submitted applications: </caption> --%>
			<thead>
				<tbody>
					
					<tr><th style="font-size: 18px">Application</th></tr>
						
						<tr><th style="font-size: 15px"><img src="https://icons.iconarchive.com/icons/dakirby309/simply-styled/128/Calendar-icon.png"  width="24"> Submitted on</th>
							<th></th>
							<c:forEach items="${studentApplications}" var="studentApplication"> 
							<td style="font-size: 15px">${studentApplication.dateOfApplication}</td></tr>
							 </c:forEach> 
							<tr><th style="font-size: 15px" ><img src="https://icons.iconarchive.com/icons/aha-soft/standard-city/128/university-icon.png" width="24"> Faculty</th>
							<th></th>
							<c:forEach items="${studentApplications}" var="studentApplication">
							<td style="font-size: 15px">${studentApplication.major}</td></tr>
							 </c:forEach> 
							<tr><th style="font-size: 15px"><img src="https://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Categories-applications-education-university-icon.png" width="24"> Major</th>
							<th></th>
							<c:forEach items="${studentApplications}" var="studentApplication">
							<td style="font-size: 15px">${studentApplication.faculty}</td></tr>	
							</c:forEach>
							 
						
							
						<tr><th style="font-size: 15px"><img src="https://icons.iconarchive.com/icons/dario-arnaez/genesis-3G/128/User-Files-icon.png"  width="24"> 
							 Uploaded documents: </th>
						<th></th>	
						<td></td></tr>
						<tr><th style="font-size: 13px">Highshcool Diploma</th>		
							<th style="font-size: 13px">Testimony 1st year</th>	
							<th style="font-size: 13px">Testimony 2nd year</th></tr>
							<c:forEach items="${studentApplications}" var="studentApplication">
							<td><a href="/download?id=${studentApplication.id}" >
								<img style="width: 30px; height: 30px" src="<c:url value="https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/PDF_file_icon.svg/98px-PDF_file_icon.svg.png" />"></a>
							 
							</td>
							</c:forEach>
							<c:forEach items="${studentApplications}" var="studentApplication">
							<td><a href="/download?id= ${studentApplication.id}">
								<img style="width: 30px; height: 30px" src="<c:url value="https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/PDF_file_icon.svg/98px-PDF_file_icon.svg.png" />"></a>
							 
							</td>
							</c:forEach>
							<c:forEach items="${studentApplications}" var="studentApplication">
							<td><a href="/download?id= ${studentApplication.id}">
								<img style="width: 30px; height: 30px" src="<c:url value="https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/PDF_file_icon.svg/98px-PDF_file_icon.svg.png" />"></a>						
							</td>	
							</c:forEach>
						<tr><th style="font-size: 13px">Testimony 3rd year</th>
							<th style="font-size: 13px">Testimony 4th year</th>
							<th style="font-size: 13px">Birth Certificate</th> </tr>
							<c:forEach items="${studentApplications}" var="studentApplication">	
							 <td><a href="/download?id= ${studentApplication.id}">
								<img style="width: 30px; height: 30px" src="<c:url value="https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/PDF_file_icon.svg/98px-PDF_file_icon.svg.png" />"></a>
							</td>
							</c:forEach>
							<c:forEach items="${studentApplications}" var="studentApplication">	
							<td><a href="/download?id= +${studentApplication.id}">
								<img style="width: 30px; height: 30px" src="<c:url value="https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/PDF_file_icon.svg/98px-PDF_file_icon.svg.png" />"></a>
							</td>
							</c:forEach>
							<c:forEach items="${studentApplications}" var="studentApplication">	
							<td><a href="/download?id= +${studentApplication.id}">
								<img style="width: 30px; height: 30px" src="<c:url value="https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/PDF_file_icon.svg/98px-PDF_file_icon.svg.png" />"></a>
							</td>	
							</c:forEach> 									
					
				</tbody>
			</table>
		               
			</div>
		</div>
		
		<div class="col-xl-5 col-lg-5 col-md-12 col-sm-12 col-12">
			<div class="card h-90" style="margin-top: -2.7%">
				<table class="table ">
					<thead>
						<tbody>
							<tr><th style="font-size: 18px">Evaluation</th></tr>
							
						</tbody>
						
					</table>
				<div>
					
					
					<div id="progressBar" style="margin-left: 12%">
						<div id=progressBarFull></div> 					
					</div>
					
					
					<div class="status -pending" 
						style="font-size: 25px; margin-left: 25%; margin-top: 8%; "
						>Pending</div>
					
					</div>
					 <table class="table " style="margin-top: 10%">
						<thead>
							<tbody>
							<c:forEach items="${studentApplications}" var="studentApplication">
							<tr><th style="font-size: 15px">Status:    ${studentApplication.status}</th></tr>
							
							<th style="font-size: 15px"></th>
							</c:forEach>
													
							</tbody>
					</table>		
			</div>
		</div>
		
                    
	</div>
</div>
	
</form> 

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
	
		const progressBar = document.getElementById('progressBarFull');
		progressBarFull.style.width = `${(100 * 1) }`;

	</script>
	
	<script type="text/javascript">
	
		let status = document.getElementById("status");
		if(status == "Accepted"){
			const progressBar = document.getElementById('progressBarFull');
		progressBarFull.style.width = `${(100 * 2) }`;
		}

	</script>
	
	<script type="text/javascript">
			var $progress = $('.progress');
			var $progressBar = $('.progress-bar');
			
				
				$('#submit').click(function(){
			  // Get widths 
			  var currentWidth = parseInt($progressBar.css('width'));
			  var allowedWidth = parseInt($progress.css('width'));
			  
			  // Add width from quantity input
			  var addedWidth = currentWidth + parseInt($quantity.val());
			 
			  // Set to 100% if user added more than allowed
			  if (addedWidth > allowedWidth) {
			    addedWidth = allowedWidth;
			  }
			 
			  // Normalize, to calculate actual percentage: if progress is 200px but user adds 100 it will add 50%
			  var progress = (addedWidth / allowedWidth) * 100;
			
			  //  For now we will add the progress from outside of ajax call
			  $progressBar.animate({width: progress + '%' }, 100);
			  
			  // Ajax call
			  $.get('/blabla', { 
			    firstName: $firstName.val(),
			    lastName: $lastName.val(), 
			    email: $email.val(), 
			    quantity: $quantity.val() })
			  .done(function(){
			    // Ajax Success
			    // You shoud move the progress bar animate here
			    // $progressBar.animate({width: progress + '%' }, 100); 
			  }).fail(function(){
			    // Ajax failed
			  })
			})
	</script>
	
	
	
	<script type="text/javascript">
		let cnt = 0;

		setInterval(() => {
		  cnt = (cnt + 1) & 3;
		  
		  if (cnt & 1) {
		    if (cnt & 2) {
		       
		    $('#status')
		      .text('Pending')
		      .attr('class', 'status -pending');
		  }
		}, 3000);
	</script>

 </body> 



</html>