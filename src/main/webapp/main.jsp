<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

<title>JSP �α��� �� ����Ʈ</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expended="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP �Խ��� �� ����Ʈ</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1" aria-expanded="false">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">����</a></li>
				<li><a href="bbs.jsp">�Խ���</a></li>
			</ul>
			<%
           		if(userID == null) {
            %>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
                     data-toggle="dropdown" role="button" aria-haspopup="true"
                     aria-expanded="false">�����ϱ�<span class="caret"></span></a>
                     <ul class="dropdown-menu">
                     	<li><a href="login.jsp">�α���</a></li>
                     	<li><a href="join.jsp">ȸ������</a></li>
                     </ul>
				</li>
			</ul>

			<%
           		} else {
			%>
						<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
                     data-toggle="dropdown" role="button" aria-haspopup="true"
                     aria-expanded="false">ȸ������<span class="caret"></span></a>
                     <ul class="dropdown-menu">
                     	<li><a href="logoutAction.jsp">�α׾ƿ�</a></li>
                     </ul>
				</li>
			</ul>
			<%
           		}
			%>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>�� ����Ʈ �Ұ�</h1>
				<p>�� ������Ʈ�� ��Ʈ��Ʈ������ ���� JSP �� ����Ʈ�Դϴ�. �ּ����� �������� �̿��ؼ� �����߽��ϴ�. ������ ���ø����δ� ��Ʈ��Ʈ���� �̿��߽��ϴ�.</p>
				<p><a class="btn btn-primary btn-pull" href="#" role="button">�ڼ��� �˾ƺ���</a></p>
				</div>
			</div>
		</div>
		<div class="container">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img src="images/1.jpg">
					</div>
					<div class="item">
						<img src="images/2.jpg">
					</div>
					<div class="item">
						<img src="images/3.jpg">
					</div>
				</div>
					<a class="left carousel-control" href="#myCarousel" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
					</a>
					<a class="right carousel-control" href="#myCarousel" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
			</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
