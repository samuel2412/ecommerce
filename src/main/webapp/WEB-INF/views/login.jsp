<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="E-commerce" bodyClass="login">

<jsp:attribute name="extraScripts">
<c:url value="/" var="contextPath" />
	<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="imagens/icons/favicon.ico"/>
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="${contextPath }resources/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="${contextPath }resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="${contextPath }resources/vendor/animate/animate.css">
	<!--===============================================================================================-->	
		<link rel="stylesheet" type="text/css" href="${contextPath }resources/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="${contextPath }resources/vendor/select2/select2.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="${contextPath }resources/css/util.css">
		<link rel="stylesheet" type="text/css" href="${contextPath }resources/css/main.css">
	<!--===============================================================================================-->




    <!--===============================================================================================-->	
    	<script src="${contextPath }resources/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    	<script src="${contextPath }resources/vendor/bootstrap/js/popper.js"></script>
    	<script src="${contextPath }resources/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    	<script src="${contextPath }resources/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    	<script src="${contextPath }resources/vendor/tilt/tilt.jquery.min.js"></script>
    	<script >
    		$('.js-tilt').tilt({
    			scale: 1.1
    		})
    	</script>
    <!--===============================================================================================-->
    	<script src="${contextPath }resources/js/main.js"></script>

    </jsp:attribute>

    <jsp:body>
    
    
    <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="resources/imagens/img-01.png" alt="IMG">
				</div>

				<form:form ccsClass="login100-form validate-form" servletRelativeAction="/login" method="post">
					<span class="login100-form-title">
						Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "E-mail válido é obrigatório: ex@abc.xyz">
						<input class="input100" type="text" name="username" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Senha é obrigatória">
						<input class="input100" type="password" name="password" placeholder="Senha">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>


					<div class="text-center p-t-136">
						<a class="txt2" href="#">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	
    
 </jsp:body>
</tags:pageTemplate>