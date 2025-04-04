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

<!-- �Խ��� �̸����� �κ� -->
<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-lg-6" style="margin-top:20px">
			<div class="card shadow">
				<div class="card-body">
					<h4 class="card-title">�����Խ���</h4>
					<table class="table table-hover" id='board_list'>
						<thead>
							<tr>
								<th class="text-center w-25">�۹�ȣ</th>
								<th>����</th>
								<th class="text-center w-25 d-none d-xl-table-cell">�ۼ���¥</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center">5</td>
								<th><a href='${root }board/read'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
						</tbody>
					</table>
					
					<a href="${root }board/main" class="btn btn-primary">������</a>
				</div>
			</div>
		</div>
		<div class="col-lg-6" style="margin-top:20px">
			<div class="card shadow">
				<div class="card-body">
					<h4 class="card-title">���ӰԽ���</h4>
					<table class="table table-hover">
						<thead>
							<tr>
								<th class="text-center w-25">�۹�ȣ</th>
								<th>����</th>
								<th class="text-center w-25 d-none d-xl-table-cell">�ۼ���¥</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
						</tbody>
					</table>
					
					<a href="board_main.html" class="btn btn-primary">������</a>
				</div>
			</div>
		
		</div>
		<div class="col-lg-6" style="margin-top:20px">
			<div class="card shadow">
				<div class="card-body">
					<h4 class="card-title">��ġ�Խ���</h4>
					<table class="table table-hover">
						<thead>
							<tr>
								<th class="text-center w-25">�۹�ȣ</th>
								<th>����</th>
								<th class="text-center w-25 d-none d-xl-table-cell">�ۼ���¥</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
						</tbody>
					</table>
					
					<a href="board_main.html" class="btn btn-primary">������</a>
				</div>
			</div>
		</div>
		<div class="col-lg-6" style="margin-top:20px">
			<div class="card shadow">
				<div class="card-body">
					<h4 class="card-title">�������Խ���</h4>
					<table class="table table-hover">
						<thead>
							<tr>
								<th class="text-center w-25">�۹�ȣ</th>
								<th>����</th>
								<th class="text-center w-25 d-none d-xl-table-cell">�ۼ���¥</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<th><a href='board_read.html'>�����Դϴ�</a></th>
								<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
							</tr>
						</tbody>
					</table>
					
					<a href="board_main.html" class="btn btn-primary">������</a>
				</div>
			</div>
		</div>
	</div>
</div>
	
<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>


</body>
</html>









