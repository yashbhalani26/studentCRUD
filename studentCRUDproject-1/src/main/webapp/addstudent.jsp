<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Data</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	  <h2>Add Student</h2>
	  <form class="form-horizontal" action="/add" method="post">
	  <div class="form-group">
	      <!-- <label class="control-label col-sm-2" for="f_name">First Name:</label> -->
	      <div class="col-sm-5">
	        First Name:<input type="text" class="form-control" id="f_name" name="f_name">
	      </div>
	      
	      <div class="col-sm-5">
	        Last Name:<input type="text" class="form-control" id="l_name" name="l_name">
	      </div>
	    </div>
	    <div class="form-group">
	      <div class="col-sm-10">
	        Mobile Number:<input type="text" class="form-control" id="mobile_number" name="mobile_number">
	      </div>
	    </div>
	    <div class="form-group">
	      <div class="col-sm-10">
	        E-mail:<input type="email" class="form-control" id="email"  name="email">
	      </div>
	    </div>
	    <div class="form-group">
	      <div class="col-sm-10">
		      Gender:<br><input type="radio" id="male"  name="gender" value="male">Male
		             <input type="radio" id="female"  name="gender" value="female">Female
		  </div>
		</div>
		<div class="form-group">
	      <div class="col-sm-10">
	        City:<input type="text" class="form-control" id="city"  name="city">
	      </div>
	    </div>
	    <div class="form-group">
	      <div class="col-sm-10">
	        State:<input type="text" class="form-control" id="state"  name="state">
	      </div>
	    </div>
	    <div class="form-group">
	      <div class="col-sm-10">
	        Country:<select id="country" name="country" class="form-control">
  			   <option value="Cameroon">Cameroon</option>
			   <option value="Canada">Canada</option>
			   <option value="Canary Islands">Canary Islands</option>
			   <option value="Cape Verde">Cape Verde</option>
			   <option value="Cayman Islands">Cayman Islands</option>
			   <option value="Central African Republic">Central African Republic</option>
			   <option value="China">China</option>
			   <option value="India">India</option>
               <option value="Zambia">Zambia</option>
			   <option value="Zimbabwe">Zimbabwe</option>
			</select>
	      </div>
	    </div>
	    <div class="form-group">        
	      <div class="col-sm-offset-2 col-sm-10">
	        <button type="submit" class="btn btn-default">Submit</button>
	      </div>
	    </div>
	  </form>
	</div>

</body>
</html>