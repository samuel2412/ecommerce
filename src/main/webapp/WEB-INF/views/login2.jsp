<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate titulo="E-commerce">
    <div class="container">
        <h1>Login</h1>
        <form:form servletRelativeAction="/login" method="post">
            <div class="form-group">
                <label>Nome de Usuário</label>
                <input type="text" name="username" class="form-control" />
            </div>
            <div class="form-group">
                <label>Senha</label>
                <input type="password" name="password" class="form-control" />
            </div>
            
            <button type="submit" class="btn btn-outline-success">Logar</button>
        </form:form>
        
    </div>

</tags:pageTemplate>



