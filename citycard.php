<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>City Card</title>
    <link rel="stylesheet" href="./css/CityCard.css">
</head> 

<body>
<header>
    <p>Welcome to City Card!</p> 
</header>

<?php
// Database configuration
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'test';

// Create connection
$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    echo "Connected successfully!";
}


// Fetch city data
$sql = "SELECT * FROM citycard";
$result = $conn->query($sql);

// Close connection
$conn->close();
?>


<section>
    <h1>City Information</h1>
    <div class="city">
    
    
        <?php
        if ($result->num_rows > 0) {
            // Output data of each row
            
            while($row = $result->fetch_assoc()) {
                echo '<div class="City_Card">';
                echo '<h1 class="cityname">' . htmlspecialchars($row["city_name"].", ".$row["country"]) . '</h1>';
                echo '<p class="Subtext">'. htmlspecialchars($row["einwohner"]) . '</p>';
                echo '<p class="description">' . htmlspecialchars($row["city_description"]) . '</p>';
                echo '<section class="slideshow-container">';
                ?>
                <div class="mySlides Frame">
                 <img src="<?php echo htmlspecialchars($row["image1_path"]) ?>" alt="Img1">
                </div>
                <div class="mySlides Frame">
                 <img src="<?php echo htmlspecialchars($row["image2_path"]) ?>" alt="Img2">
                </div>
                 <div class="mySlides Frame">
                <img src="<?php echo htmlspecialchars($row["image3_path"]) ?>" alt="Img3">
                </div>

                <!-- Next and previous buttons -->
                <a class="prev">&#10094;</a>
                <a class="next">&#10095;</a>
                     
                <!-- The dots/circles -->
                <div style="text-align:center">
                 <span class="dot"></span>
                 <span class="dot"></span>
                 <span class="dot"></span>
                </div>    
            </section>
        
            <section class="icon1Layout">
              <img class="icon" src=".\icon\favorite.png">
            </section>

            <section class="icon2Layout">
               <img class="icon" src=".\icon\share.png">
            </section>

            <section class="icon3Layout">
                <img class="icon" src=".\icon\visibility_off.png">
            </section>

            <section class="icon4Layout">
                <img class="icon" src=".\icon\linked_services.png">
            </section>

            <p class="Reviews">Evaluation from Booking.com</p>

            <section class="starLayout">
                <img class="star" src=".\icon\star_1.png">
                <img class="star" src=".\icon\star_1.png">
                <img class="star" src=".\icon\star_1.png">
                <img class="star" src=".\icon\star_1.png">
                <img class="star" src=".\icon\star_half.png">
                <?php
                echo '<p class="zahl">' . htmlspecialchars($row["bewertung"]) . '</p>';
                ?>
                
            </section>

            <section class="ButtonLayout">
                <button class="Button Button_text"> Mehr anschauen</button>
            </section>    
        </div>
        <?php
            }
        } else {
            echo "<p>No cities found in the database.</p>";
        }   
        ?>
      <script src="./js/SlideShow1.js"></script> 
    </div>
    
</body>
</html>