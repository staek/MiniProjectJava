<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>�̴� ������Ʈ</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<div class="alert alert-danger">
						<h3>�α��� ����</h3>
						<p>���̵� ��й�ȣ�� Ȯ�����ּ���</p>
					</div>
					<form action="${root }main" method="get">
						<div class="form-group">
							<label for="user_id">���̵�</label>
							<input type="text" id="user_id" name="user_id" class="form-control"/>
						</div>
						<div class="form-group">
							<label for="user_pw">��й�ȣ</label>
							<input type="password" id="user_pw" name="user_pw" class="form-control"/>
						</div>
						<div class="form-group text-right">
							<button type="submit" class="btn btn-primary">�α���</button>
							<a href="${root }user/join" class="btn btn-danger">ȸ������</a>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>

<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>


</body>
</html>








