<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>User Manager</title>
<link href="${pageContext.request.contextPath}/admin/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/metisMenu/metisMenu.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/css/custom.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/admin/includes/navigation.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12" style="margin-top: 50px;">
					<div class="panel panel-default">
						<div class="panel-heading">USER MANAGER</div>
						<s:if test="%{note != null}">
							<div class="alert alert-success" role="alert">
									<s:property value="note" />
							</div>
						</s:if>
						<div class="panel-body">
						<form method="post"
						action="${pageContext.request.contextPath}/admin/deletemultipleuser">
							<table width="100%"
								class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>
											<label class="checkbox-inline"> 
												<input type="checkbox" id="checkBoxAll"/> 
												<input type="submit" class="btn btn-danger" value="Xóa"
													onclick="return confirm('Are you sure want to delete this User?')">
											</label>
										</th>
										<th>Username</th>
										<th>Password</th>
										<th>Email</th>
										<th>Phone</th>
										<th>Access</th>
										<th>
											<a href="${pageContext.request.contextPath}/admin/adduser" type="button" class="btn btn-success right">Thêm</a>
										</th>
									</tr>
								</thead>
								<tbody>
								<s:iterator value="listUser">
									<tr>
										<td>
											<label class="checkbox-inline"> 
												<input type="checkbox" class="chkCheckBoxId" name="deleteUserId" value='<s:property value="userId"/>' />
											</label>
										</td>
										<td><s:property value="userName"/></td>
										<td><s:property value="password"/></td>
										<td><s:property value="email"/></td>
										<td><s:property value="phone"/></td>
										<td>
										<s:if test="%{access == 1}">Adminstrator</s:if>	
										<s:else>Normal User</s:else>
										</td>
										<td><a href="${pageContext.request.contextPath}/admin/edituser?userId=<s:property value="userId"/>" type="button" class="btn btn-warning">Sửa</a>
										 	<a href="${pageContext.request.contextPath}/admin/deleteuser?userId=<s:property value="userId"/>" type="button" class="delete btn btn-danger">Xóa</a></td>
									</tr>
								</s:iterator>
								</tbody>
							</table>
							</form>
						</div>
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
	<script>
		$('.delete').click(function () {
		    return confirm("Are you sure want to delete this User?");
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#checkBoxAll').click(function(){
				if($(this).is(":checked"))
					$('.chkCheckBoxId').prop('checked', true);
				else
					$('.chkCheckBoxId').prop('checked', false);
			});
		});
	</script>
</body>

</html>
