<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="E-commerce">


	<div class="container">
	<form:form action="${s:mvcUrl('PC#gravar').build() }" method="post" commandName="produto">
			<div class="form-group">
				<label>Nome</label>
				<form:input path="nome" cssClass="form-control" />
				<form:errors path="nome" />
			</div>
			<div class="form-group">
		        <label>Descrição</label>
				<form:input path="descricao" cssClass="form-control" />
		        <form:errors path="descricao" />
			</div>
			<div class="form-group">
				<label>Marca</label>
				<form:input path="marca" cssClass="form-control" />
		        <form:errors path="marca" />
			</div>
			<div class="form-group">
				<label>Imagem</label>
				<form:input path="imagem" cssClass="form-control"/>
		        <form:errors path="imagem" />
			</div>
			<div class="form-group">
				<label>Preco</label>
				<form:input path="preco" cssClass="form-control"/>
		        <form:errors path="preco" />
			</div>
				
				<form:hidden path="dataAnuncio" value="10/09/2019" cssClass="form-control"/>
		       			
			
			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form:form>
	</div>

	
	
	</tags:pageTemplate>