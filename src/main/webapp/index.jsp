<%@include file="/WEB-INF/conmon/taglib.jsp"%>
<html>
<head>
<!-- <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" -->
<link href="webjars/jquery/3.3.1/jquery.js" rel="stylesheet">
</head>
 <script type="text/javascript">
          $(document).ready(function(){
             if (jQuery) {  
               // jQuery is loaded  
               alert("Yeah!");
             } else {
               // jQuery is not loaded
               alert("Doesn't Work");
             }
          });
        </script>
<body>
	<h2>Hello World!</h2>
</body>
</html>
