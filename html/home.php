<?php
session_start();
if(!isset($_SESSION['username'])){
    header('location:login.php');
    echo "you are logged out !";
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <title>Home - CPM</title>
</head>
<body>
    <?php
    include './greeting.php';
    ?>
    <div class="home_content">
        <div class="heading">
            <h3>Home</h3>
            <div class="logout"><a href="./logout.php">Logout</a>
            </div>
        </div>

        <div class="body">
            <div class="date"><?php echo $date;?></div>
            <h1><?php echo $greeting ; echo $_SESSION['username'];?></h1>
            
        </div>
        <div class="col">
				<div class="card card1">
					<h3>Projects</h3> <br>
                    <p>You don't have any projects yet !</p>
                    <!-- <img src="../illustrations/Whoosh/VR.png" alt="" width="200" height="250"> -->
					<!-- <button><i class="fa-solid fa-plus"></i>Create Project</button> -->
                    <a href="../project-creating-form.php"><button>Make Request</button></a>
				</div>
				<div class="card card2">
					<h3>Your team members</h3>
					<p></p>
                    <button style="cursor:pointer;"id="openFormBtn">Manage team</button>
				</div>
                <div class="card card3">
					<h3>Your Group</h3>
					<p></p>
					<a href="#"></a>
                    <!-- <button style="cursor:pointer;"id="openFormBtn">Create group</button> -->
				</div>
                <div class="card card4">
					<h3>Your Group</h3>
					<p></p>
					<a href="#"></a>
                    <!-- <button style="cursor:pointer;"id="openFormBtn">Create group</button> -->
				</div>
				
				
			</div>
            <form action= "" id="myForm" class="form">
                <h3>Poject details</h3>
            <div class="form-group">
                <label>Member 1</label>
                        <select name="team_members" id="team_members">
                            <option value="" disabled selected>Select from users</option>
                            <?php
                            // Connecting to the database and retrieve the list of available users
                            include '../html/dbcon.php';
                            $result = mysqli_query($con, "SELECT * FROM users");
                            // Loop through the results and create an option for each user
                            while($row = mysqli_fetch_array($result)) {
                            echo "<option value='" . $row['user_id'] . "'>" . $row['username'] . "</option>";
                            }
                            ?>
                        </select>
            </div>
            <div class="form-group">
                <label for="">Member 2</label>
                            <select name="team_members" id="team_members">
                            <option value="" disabled selected>Select from users</option>
                            <?php
                            // Connecting to the database and retrieve the list of available users
                            include './html/dbcon.php';
                            $result = mysqli_query($con, "SELECT * FROM users");
                            // Loop through the results and create an option for each user
                            while($row = mysqli_fetch_array($result)) {
                            echo "<option value='" . $row['user_id'] . "'>" . $row['username'] . "</option>";
                            }
                            ?>
                            </select>
            </div>
            <div class="form-group">
                <label for="">Member 3</label>
                            <select name="team_members" id="team_members">
                            <option value="" disabled selected>Select from users</option>
                            <?php
                            // Connecting to the database and retrieve the list of available users
                            include './html/dbcon.php';
                            $result = mysqli_query($con, "SELECT * FROM users");
                            // Loop through the results and create an option for each user
                            while($row = mysqli_fetch_array($result)) {
                            echo "<option value='" . $row['user_id'] . "'>" . $row['username'] . "</option>";
                            }
                            ?>
                            </select>
            </div>
            <div class="form-group">
                <label for="">Member 4</label>
                            <select name="team_members" id="team_members">
                            <option value="" disabled selected>Select from users</option>
                            <?php
                            // Connecting to the database and retrieve the list of available users
                            include './html/dbcon.php';
                            $result = mysqli_query($con, "SELECT * FROM users");
                            // Loop through the results and create an option for each user
                            while($row = mysqli_fetch_array($result)) {
                            echo "<option value='" . $row['user_id'] . "'>" . $row['username'] . "</option>";
                            }
                            ?>
                            </select>
            </div>
            <div class="operations">
            <button type="submit" id="submitTeam">Submit</button>
            <button type="button" id="closeFormBtn">Close</button>
            </div>
            
</form>
    </div>
    <script src="../js/home.js"></script>
</body>
</html>