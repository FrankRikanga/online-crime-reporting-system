<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "crime_portal";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get query type from URL parameter
$query_type = isset($_GET['query']) ? $_GET['query'] : '';

switch ($query_type) {
    case 'unassigned_cases':
        $query = "SELECT c_id, a_no, location, type_crime, d_o_c FROM complaint WHERE inc_status = 'unassigned'";
        break;
    case 'assigned_cases':
        $query = "SELECT c_id, a_no, location, type_crime, d_o_c FROM complaint WHERE inc_status = 'assigned'";
        break;
    case 'female_complaints':
        $query = "SELECT u_name, mob FROM user WHERE gen = 'female'";
        break;
    case 'male_complaints':
        $query = "SELECT u_name, mob FROM user WHERE gen = 'male'";
        break;
    case 'location':
        $query = "SELECT location, type_crime FROM complaint";
        break;
    case 'crimes':
        $query = "SELECT type_crime, location, description, p_id FROM complaint";
        break;
    case 'overall':
        $query = "SELECT complaint.c_id, complaint.a_no, complaint.location, complaint.type_crime, complaint.d_o_c, complaint.inc_status, complaint.pol_status, user.u_name, user.mob FROM complaint JOIN user ON complaint.c_id = user.u_id";
        break;
    default:
        echo "Invalid query type.";
        exit();
}

$result = $conn->query($query);
?>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    
    <title>Report - Crime Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        .button {
            display: block;
            margin: 10px 0;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
        }
        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div>
    <nav  class="navbar navbar-default navbar-fixed-top">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="home.php"><b>Crime Portal</b></a>
          </div>
          <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li ><a href="official_login.php">Official Login</a></li>
              <li ><a href="headlogin.php">HQ Login</a></li>
              <li class="active"><a href="headHome.php">HQ Home</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="active" ><a href="headHome.php">View Complaints</a></li>
              <li class="active" ><a href="statistics.html">Complaints analytics</a></li>
              <li class="active" ><a href="report.html">Reports</a></li>
              <li ><a href="head_view_police_station.php">Police Station</a></li>
              <li><a href="h_logout.php">Logout &nbsp <i class="fa fa-sign-out" aria-hidden="true"></i></a></li>
            </ul>
          </div>
        </div>
       </nav>
    </div>
    <div>
        <br><br>
    <h1>Report</h1>
    <button class="button" onclick="window.location.href='report.html'">Back to Report Selection</button>
    <button class="button" onclick="window.print()">Print Report</button>
    <table>
        <thead>
            <?php
            if ($result->num_rows > 0) {
                echo "<tr>";
                // Print table headers
                while ($field_info = $result->fetch_field()) {
                    echo "<th>{$field_info->name}</th>";
                }
                echo "</tr>";
            }
            ?>
        </thead>
        <tbody>
            <?php
            if ($result->num_rows > 0) {
                // Print table rows
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    foreach ($row as $value) {
                        echo "<td>{$value}</td>";
                    }
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='100%'>No records found.</td></tr>";
            }
            ?>
        </tbody>
    </table>
</body>
</html>

<?php
$conn->close();
?>
