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
	
	 
	<form:form action="${s:mvcUrl('CC#finalizar').arg(0, produto.id ).build() }" method="post" commandName="comentario">
			<div class="form-group">
				<label>Opnião:</label>
				<form:input path="comentario" cssClass="form-control" />
				<form:hidden path="dataComentario" value="10/09/2019" cssClass="form-control"/>
				<form:hidden path="usuarioEmail" value="${usuario.email }" cssClass="form-control"/>
			</div>
				
		       			
			
			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form:form>
		
		
	</div>

	
	</tags:pageTemplate>