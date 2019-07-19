<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<head>
<meta charset="UTF-8">
<link href="webjars/jquery/3.3.1/jquery.js" rel="stylesheet">
<link href="webjars/jquery/3.3.1/jquery.min.js" rel="stylesheet">
<link href="<c:url value="/theme/style.css"/>" rel="stylesheet">
</head>
<!-- header  -->
<div class="header">
	<div class="row">
		<div class="col-1">
			<a href="#default" class="logo"><s:message code="global.menu.home" /></a>
		</div>

		<div class="col-2">
			<a class="active" href="#home"><s:message code="global.menu.home" /></a>
			<a class="tin" href="#news"><s:message code="global.menu.news" /></a> 
			 <a	href="#about"><s:message code="global.menu.about" /></a>
		</div>

	</div>
	<div class="header-right">		
		<a href="#" data-lang=vi>VietNam</a>
		<a href="#" data-lang=en>English</a> 
	
	
	</div>
</div>
<script>
	$(function() {
		$("a[data-lang]").click(function(){
			var lang=$(this).attr("data-lang");
			$.get("home.html?language="+lang,function(){
				location.reload();
			})
		})
	})
</script>
