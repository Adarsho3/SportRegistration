<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sports Registration Form</title>
<style>
		#name,#roll,#email,#department,#enrol{
		width:320px;
		height:30px;
		}
		.submit1,.submit2,.submit3,.submit4{
		width:160px;
		height:30px;
		border:none;
		text-decoration:none;
		color:white;
		font-size:16px;
		}
		.submit1{
		background-color:red;
		}
		.submit2{
		background-color:green;
		}
		.submit3{
		background-color:Green;
		}
		.submit4{
		background-color:green;
		}
		a{
		text-decoration:none;
		color:black;
		}
		table{
		font-size:20px;
		}
</style>
</head>
<body>
	<center>
		<h1><u>Sports <span style="color:Red;">Enrollment</span> Form</u></h1>
		<hr>
		<form action="register.jsp" method="post">
			<table border="4">
				<tr>
					<td colspan="1" >Candidate Name</td>
					<td colspan="2" ><input  type="text" placeholder="Enter Name" id="name" name="name" required></td>
				</tr>
				<tr>
					<td colspan="1">Roll Number</td>
					<td colspan="2"><input type="text" placeholder="Enter Roll No" id="roll" name="roll" required></td>
				</tr>
				<tr>
					<td colspan="1">Email Address</td>
					<td colspan="2"><input type="email" placeholder="Enter Email" id="email" name="email" required></td>
				</tr>
				<tr>
					<td colspan="1">Date Of Birth (DD-MM-YYYY) :</td>
					<td colspan="2"><input type="text" placeholder="Enter DOB" id="dob" name="dob" required></td>
				</tr>
				<tr>
					<td colspan="1">Department</td>
					<td colspan="2"><select id="department" name="dept" placeholder="Select Department" required>
							<option value="CSE">Computer Science Engineering</option>
							<option value="ECE">Electronics and Communication Engineering</option>
							<option value="EEE">Electrical and Electronics Engineering</option>
							<option value="ME">Mechanical Engineering</option>
							<option value="CE">Civil Engineering</option>
					</select>
					</td>
				</tr>
				<tr>
				<td colspan="1">Sport of Interest</td>
					<td colspan="2"><select id="sport" name="sport" placeholder="Select Sport of Interest" required>
							<option value="Cricket">Cricket</option>
							<option value="Volleyball">Volleyball</option>
							<option value="Kabaddi">Kabaddi</option>
							<option value="Football">Football</option>
							<option value=" Tennis">Tennis</option>
					</select>
				<tr>
				<td colspan="1" >Achievement</td>
				<td colspan="2" ><input type="text" placeholder="Enter Achievement" id="ach" name="ach"></td>

				</tr>
				<tr>
					<td  colspan="1" style="text-align: center;"><input
						type="submit" value="Submit" class="submit1"></td>
						<td colspan="1" style="text-align: center;"><button class="submit2"><a  href="display.jsp" >Display All</a></button></td>
						<td colspan="1" style="text-align: center;"><button class="submit3"><a  href="Id.jsp">Search ID</a></button></td>
				</tr>
				<tr>
					<td></td>
					<td colspan="1" style="text-align: center;"><button class="submit4"><a  href="Roll.jsp">Update</a></button></td>
					<td></td>
				</tr>

			</table>
		</form>
		<h1><a href="dashboard.jsp">Dashboard</a></h1>
		<h1><a href="admin.jsp">Administrator Login</a></h1>
	</center>
</body>
</html>