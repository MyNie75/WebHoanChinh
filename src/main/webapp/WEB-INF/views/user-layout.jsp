<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<!-- <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">  -->
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

	<!-- header -->
		<%@ include file="/WEB-INF/views/includes/header.jsp" %>
	<!-- end header -->


	<article>
		<jsp:include page="${param.view}" />
	</article>
	<!-- footer -->

	<!--End footer -->
	
</body>
</html>