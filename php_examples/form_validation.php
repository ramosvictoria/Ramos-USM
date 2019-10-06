<!DOCTYPE html>
<html>
	<!--
	Turnin page example
	This page demonstrates a turnin form.
	The user can type in their personal info and turn in a fake homework assignment.
	Created using AMPPS
	-->
	<head>
		<title>HW Submission Page</title>
	</head>

	<body>

<?php
// define variables and set to empty values
$studentname = $id = $assignment = $email = $cheat = " ";
$studentnameErr = $idErr = $assignmentErr = $emailErr = $cheatErr = " ";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
	// 1. name is not empty and has to be letters with white space in between first and last name
	if (empty($_POST["studentname"])) {
    $studentnameErr = "Name is required";
} else {
	$studentname = stude_input($_POST["studentname"]);
}
// 2. check student ID is 7 digits
if (empty($_POST["id"])) {
	$idErr = "AU Student ID is required";
} else {
	$id = stude_input($_POST["id"]);
}
// 3. email is an AU student email
if (empty($_POST["email"])) {
	$emailErr = "Must be a valid AU student email";
} else {
	$email = stude_input($_POST["email"]);
	//check if email format is an email after all
	if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		$emailErr = "Invalid email format";
	}
}
// 4. choose assignment number to be submitted
if (empty($_POST["assignment"])) {
	$assignmentErr = "Must choose a valid assignment";
} else {
	$assignment = stude_input($_POST["assignment"]);
}
  // 5. check no cheating box
}

?>

<!-- start of form -->
<h1>Homework Submission Page</h1>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post" enctype="multipart/form-data">
	<fieldset>
		<legend>Personal Information</legend>
		<div>
			Name: <input type="text" name="studentname" />
			<span class="error">* <?php echo $studentnameErr;?></span>
		</div>
		<div>
			Student id: <input type="text" name="id" maxlength="7" />
			<span class="error">* <?php echo $idErr;?></span>
		</div>

		<div>
			Student email: <input type="text" name="email"/>
			<span class="error">* <?php echo $emailErr;?></span>
		</div>
	</fieldset>

	<fieldset>
		<legend>Assignment Information</legend>
		<div>
			Assignment:
			<label><input type="radio" name="assignment" value="1" /> 1</label>
			<label><input type="radio" name="assignment" value="2" /> 2</label>
			<label><input type="radio" name="assignment" value="3" /> 3</label>
			<span class="error">* <?php echo $assignmentErr;?></span>
		</div>
	</fieldset>

	<div>
		<input type="checkbox" name="cheat" /> I promise I didn't cheat!
	</div>
	<input type="submit" name="submit" value="submit" />
</form>
<!-- end of form -->

<?php
echo "<h2>Your Input:</h2>";
echo $studentname;
echo "<br>";
echo $id;
echo "<br>";
echo $email;
echo "<br>";
echo $assignment;
echo "<br>";
?>
</body>
</html>
