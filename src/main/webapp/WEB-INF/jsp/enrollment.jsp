
<html>
<head>
	<title>Enrollment</title>
	<link rel="stylesheet" href="css/enrollment.css">
</head>

<body>

   
<div class="split left" ">

	<div class="center">
	
		<p id="text"> Good luck with your Application !</p>
	
	</div>

	<div class="centered">
	<img  src="https://i.pinimg.com/originals/ef/ab/45/efab45ba636c95d3900d3014c5adf82d.png">
	</div>
</div>

<div class="split right">
	<div class="centered">


	<div class="wrapper fadeInDown"  >
	<div id="formContent" style="width: 600px">
	
	<form method="post" enctype="multipart/form-data">
		<div class="row">
		<h1 style="text-align: center">CANDIDATE: ${student.name }   ${student.surname } </h1> 
			
			<h3 >Choose Faculty: </h3>
			<br>
			<select id="major" name="major"

					onchange="javascript: dynamicdropdown(this.options[this.selectedIndex].value);">
				<option value="Mechanical_Engineering">    </option>
				<option value="Mechanical_Engineering">Mechanical Engineering</option>
				<option value="Computer_Science_Engineering">Computer Science and Engineering</option>
				<option value="Electrical_Engineering_Information_Technologies">Electrical Engineering, Information & Technologies</option>
				<option value="Natural_Sciences_and_Mathematics">Natural Sciences & Mathematics</option>
			</select>
			<br>
			<h3 >Choose major: </h3>
			<br>
			<script type="text/javascript" language="JavaScript">
				document.write('<select name="faculty" id="faculty"><option value="">First choose faculty</option></select>')
			</script>
			
			<noscript>
				<select id="faculty" name="faculty">
					<option value="open"> </option>
					<option value="delivered"> </option>
				</select>
			</noscript>
		</div>
		
			
			<h1 style="margin-top: 3%">Upload documents</h1>
			<h2>Highschool Diploma</h2>
			<input style="margin-left: 11%; margin-top: 3%" type="file" id="highschoolDiploma" name="highschoolDiploma" required="required">
			
			<h2 >Testimony of first year</h2>
			<input style="margin-left: 8.5%" type="file"   id="testimonyOfFirstYear" name="testimonyOfFirstYear" required="required">
			
			<h2 >Testimony of second year</h2>
			<input style="margin-left: 4.7%" type="file"  id="testimonyOfSecondYear" name="testimonyOfSecondYear" required="required">
			<br>
			<h2 >Testimony of third year</h2>
			<input style="margin-left: 8%" type="file"  id="testimonyOfThirdYear" name="testimonyOfThirdYear" required="required">
			<br>
			<h2 >Testimony of fourth year</h2>
			<input style="margin-left: 6.6%" type="file"  id="testimonyOfFourthYear" name="testimonyOfFourthYear" required="required">
			<br>
			<h2 >Birth certificate</h2>
			<input style="margin-left: 18%" type="file"  id="birthCertificate" name="birthCertificate" required="required">
			<br>
			<h2 >Insert total points </h2>
			
			<input style="margin-left: 16%" type="number" id="points" name="points" required="required">
			<br></br>
			<input style="margin-left: 23%" type="submit" class="button" value="Submit Application"  onclick = "Warn();"/>

		</form>
	</div>
</div>


</div>
</div>

<script type = "text/javascript">
	function dynamicdropdown(listindex) {
		let array_lenght = document.getElementById("faculty").options.length;
		if(array_lenght != 0){
			for(let i =0; i<array_lenght; i++){
				document.getElementById("faculty").options.remove(i);
			}
		}
		switch (listindex) {
			case "Mechanical_Engineering":
				document.getElementById("faculty").options[0] = new Option("");
				document.getElementById("faculty").options[1] = new Option("Manufacturing_Engineering");
				document.getElementById("faculty").options[2] = new Option("Transport_Mechanization_and_Logistics");
				document.getElementById("faculty").options[3] = new Option("Thermal_Engineering");
				document.getElementById("faculty").options[4] = new Option("Hydraulic_Power_Engineering");
				document.getElementById("faculty").options[5] = new Option("Industrial_Engineering_and_Management");
				document.getElementById("faculty").options[6] = new Option("Materials");
				document.getElementById("faculty").options[7] = new Option("Processes_and_Innovation");
				document.getElementById("faculty").options[8] = new Option("Motor_Vehicles");
				document.getElementById("faculty").options[9] = new Option("Energy_and_Environment");
				document.getElementById("faculty").options[10] = new Option("Mechatronics");
				document.getElementById("faculty").options[11] = new Option("Automation_and_System_Control");
				document.getElementById("faculty").options[12] = new Option("Industrial_Design");
				break;

			case "Computer_Science_Engineering":
				document.getElementById("faculty").options[0] = new Option("");
				document.getElementById("faculty").options[1] = new Option("Internet_network_and_security");
				document.getElementById("faculty").options[2] = new Option("Computer_education");
				document.getElementById("faculty").options[3] = new Option("Computer_science");
				document.getElementById("faculty").options[4] = new Option("Computer_Engineering");
				document.getElementById("faculty").options[5] = new Option("Application_of_information_technologies");
				document.getElementById("faculty").options[6] = new Option("Software_Engineering_and_Information_Systems");
				document.getElementById("faculty").options[7] = new Option("Software_and_information_systems_engineering");
				break;

			case "Electrical_Engineering_Information_Technologies":
				document.getElementById("faculty").options[0] = new Option("");
				document.getElementById("faculty").options[1] = new Option("Power_engineering_automation_and_renewable_energy_sources");
				document.getElementById("faculty").options[2] = new Option("Power_systems");
				document.getElementById("faculty").options[3] = new Option("Power_engineering_and_management");
				document.getElementById("faculty").options[4] = new Option("Computer_system_engineering_automation_and_robotics");
				document.getElementById("faculty").options[5] = new Option("Computer_technologies_and_engineering");
				document.getElementById("faculty").options[6] = new Option("Computer_hardware_engineering_and_electronics");
				document.getElementById("faculty").options[7] = new Option("Telecommunication_and_information_engineering");
				break;

			case "Natural_Sciences_and_Mathematics":
				document.getElementById("faculty").options[0] = new Option("");
				document.getElementById("faculty").options[1] = new Option("Teaching_Mathematics");
				document.getElementById("faculty").options[2] = new Option("Theoretical_Mathematics");
				document.getElementById("faculty").options[3] = new Option("Actuarial_and_Financial_Mathematics");
				document.getElementById("faculty").options[4] = new Option("Applied_Mathematics");
				document.getElementById("faculty").options[5] = new Option("Mathematics_Informatics");
				break;
		}
		return true;
	}



	
</script>


<script>

        let text = document.getElementById('text');
        let newDom = '';
        let animationDelay = 6;

        for(let i = 0; i < text.innerText.length; i++)
        {
            newDom += '<span class="char">' + (text.innerText[i] == ' ' ? '&nbsp;' : text.innerText[i])+ '</span>';
        }

        text.innerHTML = newDom;
        var length = text.children.length;

        for(let i = 0; i < length; i++)
        {
            text.children[i].style['animation-delay'] = animationDelay * i + 'ms';
        }
    
</script>

<script type="text/javascript">
			function Warn() {
			
		               alert ("Application submited");
		               
		               
		            }
			</script>


</body>
</html>