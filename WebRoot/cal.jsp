<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'cal.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<%
			String num1 = request.getParameter("num1");
			String num2 = request.getParameter("num2");
			String oper = request.getParameter("operator");
			double d_num1 = 0;
			double d_num2 = 0;
			double d_res = 0;
			if (num1 != null && num2 != null && oper != null) {
				d_num1 = Double.parseDouble(num1);
				d_num2 = Double.parseDouble(num2);
				if (oper.equals("+")) {
					d_res = d_num1 + d_num2;
				} else if (oper.equals("-")) {
					d_res = d_num1 - d_num2;
				} else if (oper.equals("*")) {
					d_res = d_num1 * d_num2;
				} else if (oper.equals("/")) {
					d_res = d_num1 / d_num2;
				}
			}
		%>

		<script type="text/javascript" src="js/js1.js">
</script>
	</head>
	<body>
		<form action="/web_test/cal.jsp" method="post"
			onsubmit="return checknum()">
			第一个参数 ：
			<input type="text" id="num1" value=<%=d_num1%> name="num1" />
			<br />
			第二个参数 ：
			<input type="text" id="num2" value=<%=d_num2%> name="num2" />
			<br />
			选择运算符 ：
			<select name="operator">
				<option value="+">
					+
				</option>
				<option value="-">
					-
				</option>
				<option value="*">
					*
				</option>
				<option value="/">
					/
				</option>
			</select>
			<br />
			<input type="submit" value="计算" />
		</form>
		<hr />
	结果是：<%=d_res%>
	</body>
		
</html>
