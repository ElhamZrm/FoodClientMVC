<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>
	Please Choose your favorit food!
	
	<form:form  modelAttribute="orderFood" class="form-horizontal"  >
			<fieldset>
				<legend>Order your food</legend>

				<div class="form-group">
					<label class="control-label col-lg-2" for="firstName">First Name</label>
					<div class="col-lg-10">
						<form:input id="firstName" path="firstName" type="text" class="form:input-large"/>
						<form:errors path="firstName" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="lastName">Last Name</label>
					<div class="col-lg-10">
						<form:input id="lastName" path="lastName" type="text" class="form:input-large"/>
						<form:errors path="lastName" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="age">Time</label>
					<div class="col-lg-10">
						<form:input id="time" path="time" type="text" class="form:input-large"/>
						<form:errors path="time" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="title">Address</label>
					<div class="col-lg-10">
						<form:input id="address" path="address" type="text" class="form:input-large"/>
						<form:errors path="address" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
					</div>
				</div>
			</fieldset>
		</form:form>
	
	
</body>
</html>