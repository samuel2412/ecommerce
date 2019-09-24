<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate>


	<div class="container">
	
	
	<form:form action="${s:mvcUrl('UC#gravar').build() }" method="post" commandName="usuario">	
			<div class="form-group">
				<label>Email</label>
				<form:input path="email" cssClass="form-control" />
			</div>
			<div class="form-group">
		        <label>Senha</label>
				<form:input type="password" path="senha" cssClass="form-control" />
			</div>	
			<form:hidden path="nome" value="User" cssClass="form-control"/>
			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form:form>
	</div>

	
	</tags:pageTemplate>