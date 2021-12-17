<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dodaj użytkownika</title>

    <!-- Custom fonts for this template-->
    <link href="/theme/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/theme/css/sb-admin-2.min.css" rel="stylesheet" type="text/css">

</head>

<body id="page-top">

<%@include file="/theme/header.jsp"%>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
</div>


<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary"></h6> Dodaj użytkownika</h6>
    </div>
    <div class="card-body">
        <form method="post">
            Nazwa<br/>
            <input name="userName" type="text" class="form-control" placeholder="Nazwa użytkownika"/><br/>
            E- mail<br/>
            <input name="email" type="text" class="form-control" placeholder="E-mail użytkownika"/><br/>
            Hasło<br/>
            <input name="password" type="password" class="form-control" placeholder="Hasło użytkownika"/><br/>
            <button type="submit" class="btn btn-primary">Zapisz</button>
        </form>
    </div>
</div>





    <!-- Content Row -->
    <div class="row">
    </div>
    <%@include file="/theme/footer.jsp"%>


</body>

</html>