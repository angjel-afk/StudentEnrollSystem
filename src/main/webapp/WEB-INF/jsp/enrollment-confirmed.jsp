<html>
<head>
   <script type = "text/javascript">
      function Redirect() {
         window.location = "http://localhost:8080/student-profile";
      }
      document.write("Thank you for enrolling. Your application will...");
      setTimeout('Redirect()', 5000);

      function handleSubmit(e) {

         //prevent default behavior of browser on submit form
         e.preventDefault();

         //do your job here
         sendDataToExampleAPI();

         //back to previous address in browser
         window.history.back(-1);
      }
   </script>
</head>

<body>
</body>
</html>