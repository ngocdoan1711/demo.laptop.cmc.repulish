<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Adminstrator Page</title>
<link href="${pageContext.request.contextPath}/admin/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/metisMenu/metisMenu.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/css/custom.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/morrisjs/morris.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/admin/lib/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script
	src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="./includes/navigation.jsp"></jsp:include>
		<div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12" style="margin-top: 35px;">
                <h2 class="page-header"><strong><s:property value="user.userName"/></strong> ,Profile</h2>
                <div class="row no-gutters">
                	<div class="col-6 col-md-4 text-right">UserName:</div>
					<div class="col-12 col-sm-6 col-md-8 text-left"><s:property value="user.userName"/></div>
				</div>
				<div class="row no-gutters">
                	<div class="col-6 col-md-4 text-right">Email:</div>
					<div class="col-12 col-sm-6 col-md-8 text-left"><s:property value="user.email"/></div>
				</div>
				<div class="row no-gutters">
                	<div class="col-6 col-md-4 text-right">Phone:</div>
					<div class="col-12 col-sm-6 col-md-8 text-left"><s:property value="user.phone"/></div>
				</div>
            </div>
        </div>
    </div>
	</div>
	<script src="${pageContext.request.contextPath}/admin/lib/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin/lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin/lib/metisMenu/metisMenu.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin/lib/datatables/js/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin/lib/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin/lib/datatables-responsive/dataTables.responsive.js"></script>
	<script src="${pageContext.request.contextPath}/admin/js/custom.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>
</body>
</html>