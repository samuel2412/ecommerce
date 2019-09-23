<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="titulo" required="true"%>
<%@ attribute name="bodyClass" required="false"%>
<%@ attribute name="extraScripts" fragment="true"%>



<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Simulação de e-commerce">
  <meta name="author" content="Samuel Alves de Almeida">

  <title>E-commerce</title>

<c:url value="/" var="contextPath" />
  <!-- Bootstrap core CSS -->
  <link href="${contextPath }resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 <link href="${contextPath }resources/css/main.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="${contextPath }resources/css/shop-homepage.css" rel="stylesheet">
  


   



</head>



<body class="${bodyClass}">

	<%@ include file="/WEB-INF/views/cabecalho.jsp"%>
	
	<jsp:doBody />
	

	<jsp:invoke fragment="extraScripts"></jsp:invoke>

	<%@ include file="/WEB-INF/views/rodape.jsp"%>
	
	

</body>


</html>

