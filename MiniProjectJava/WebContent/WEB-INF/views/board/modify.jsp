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
					<form action="${root }board/read" method="get">
						<div class="form-group">
							<label for="board_writer_name">�ۼ���</label>
							<input type="text" id="board_writer_name" name="board_writer_name" class="form-control" value="ȫ�浿" disabled="disabled"/>
						</div>
						<div class="form-group">
							<label for="board_date">�ۼ���¥</label>
							<input type="text" id="board_date" name="board_date" class="form-control" value="2018-7-20" disabled="disabled"/>
						</div>
						<div class="form-group">
							<label for="board_subject">����</label>
							<input type="text" id="board_subject" name="board_subject" class="form-control" value="�����Դϴ�"/>
						</div>
						<div class="form-group">
							<label for="board_content">����</label>
							<textarea id="board_content" name="board_content" class="form-control" rows="10" style="resize:none">�����Դϴ�</textarea>
						</div>
						<div class="form-group">
							<label for="board_file">÷�� �̹���</label>
							<img src="image/logo.png" width="100%"/>	
							<input type="file" name="board_file" id="board_file" class="form-control" accept="image/*"/>					
						</div>
						<div class="form-group">
							<div class="text-right">
								<button type="submit" class="btn btn-primary">�����Ϸ�</button>
								<a href="${root }board/read" class="btn btn-info">���</a>
							</div>
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
