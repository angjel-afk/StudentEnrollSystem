<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>File Upload / Download</title>
</head>
<body>
<div>
    <h3>Upload Multiple Files</h3>
    <form  method="post" >
        <%--@declare id="diploma"--%><%--@declare id="testimonyfourthyear"--%><%--@declare id="testimonythirdyear"--%><%--@declare id="testimonysecondyear"--%><%--@declare id="testimonyfirstyear"--%><%--@declare id="birthcertificate"--%><label  >Choose Faculty: </label>
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

        <label  >Choose major: </label>
        <script type="text/javascript" language="JavaScript">
            document.write('<select name="faculty" id="faculty"><option value="">First choose faculty</option></select>')
        </script>
        <noscript>
            <select id="faculty" name="faculty">
                <option value="open"> </option>
                <option value="delivered"> </option>
            </select>
        </noscript>

            <label for="diploma"  >Upload your Highschool Diploma</label>
            <input type="file" id="diploma" name="diploma" required="required">
            <br>
            <label for="testimonyFirstYear">Upload your testimony of first year</label>
            <input type="file"   id="testimonyFirstYear" name="testimonyFirstYear" required="required">
            <br>
            <label for="testimonySecondYear">Upload your testimony of second year</label>
            <input type="file"  id="testimonySecondYear" name="testimonySecondYear" required="required">
            <br>
            <label for="testimonyThirdYear">Upload your testimony of third year</label>
            <input type="file"  id="testimonyThirdYear" name="testimonyThirdYear" required="required">
            <br>
            <label for="testimonyFourthYear">Upload your testimony of fourth year</label>
            <input type="file"  id="testimonyFourthYear" name="testimonyFourthYear" required="required">
            <br>
            <label for="birthCertificate">Upload your birth certificate</label>
            <input type="file"  id="birthCertificate" name="birthCertificate" required="required">
            <br>
            <label for="points"  >Insert the total points </label>
            <br></br>
            <input type="number" id="points" name="points" required="required">
        <button type="submit">Submit</button>
        <br>
    </form>
</div>

<div>
    <h3>List of Documents</h3>
    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Diploma</th>
            <th>Name</th>
            <th>Name</th>
            <th>Name</th>
            <th>Download Link</th>
        </tr>
        </thead>
        <tbody>
        <tr th:each="studentApplication:${studentApplications}">
            <td th:text="${studentApplication.Id}" />
            <td th:text="${studentApplication.diploma}"/>
            <td th:text="${studentApplication.birthCertificate}"/>
            <td> <a th:href="@{'/downloadFile/'+${studentApp.id}}">Download</a></td>
        </tr>
        </tbody>
    </table>
</div>
        <script type="text/javascript">

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
</body>
</html>