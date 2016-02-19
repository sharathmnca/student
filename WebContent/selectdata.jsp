<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="StoreSelectData">
<select name="options">
    <option>Choose Your Option</option>
    <option value="option1">Option 1</option>
    <option value="option2">Option 2</option>
    <option value="option3">Option 3</option>
    <option value="option4">Option 4</option>
</select>
<input type="submit" value="submit">
</form>
<form name="car_form" method="post" action="doublevalue_action.php">
            <select name="car" id="car">
                    <option value="">Select Car</option>
                    <option value="BMW|Red">Red BMW</option>
                    <option value="Mercedes|Black">Black Mercedes</option>
            </select>
            <input type="submit" name="submit" id="submit" value="submit">
    </form>









</body>
</html>