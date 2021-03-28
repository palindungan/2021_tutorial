<?php
require_once 'conn.php';
require __DIR__ . '/vendor/autoload.php'; // pusher requirement

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    // start of pusher
    $options = array(
        'cluster' => 'ap1',
        'useTLS' => true
    );
    $pusher = new Pusher\Pusher(
        '01775188ad9dab52d4e2',
        '41e85489bd98874559fb',
        '1179155',
        $options
    );
    // end of pusher

    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $created_date = date("Y/m/d");

    $sql = "INSERT INTO user (first_name, last_name, created_date) VALUES ('$first_name', '$last_name', '$created_date')";

    if ($conn->query($sql) === TRUE) {
        // echo "New record created successfully";

        // start of show message pusher
        $data['message'] = $first_name . ' - ' . $last_name;
        $pusher->trigger('my-channel', 'my-event', $data);
        // end of show message pusher
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <title>User Entry</title>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <form action="" method="POST" style="margin-top: 100px;">
                    <div class="form-group">
                        <label for="first_name">First Name</label>
                        <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name">
                    </div>

                    <div class="form-group">
                        <label for="last_name">Last Name</label>
                        <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name">
                    </div>

                    <button type="submit" class="btn btn-default">Submit</button>
                </form>

            </div>
        </div>
    </div>
</body>

</html>