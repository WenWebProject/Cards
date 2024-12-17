<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Film Card</title>
    <link rel="stylesheet" href="./css/FilmCard.css">
</head> 

<body>
<header>
    <p>Welcome to Film Card!</p> 
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
$sql = "SELECT * FROM filmcard";
$result = $conn->query($sql);

// Close connection
$conn->close();
?>


<section>
    <h1>Film Information</h1>
    <div class="films">
    
    
        <?php
        if ($result->num_rows > 0) {
            // Output data of each row
            
            while($row = $result->fetch_assoc()) {
                echo '<div class="Film_Card">';
                echo '<h1 class="filmname">' . htmlspecialchars($row["film_title"]) . '</h1>';
                echo '<p class="Subtext">from ' . htmlspecialchars($row["year"].", directed by ".$row["director"]) . '</p>';
                ?>

              <div class="video">
                <video id= "myVideo" controls>
                <source src="<?php echo htmlspecialchars($row["trailer_path"]) ?>" type="video/mp4">
                </video>
              </div>

               <section class="slideshow-container">
                
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
                <img class="icon" src=".\icon\search.png">
            </section>

            <section class="icon4Layout">
                <img class="icon" src=".\icon\shopping.png">
            </section>

            <p class="Reviews">Evaluation in Netflix</p>

            <section class="starLayout">
                <img class="star" src=".\icon\star_5.png">
                <img class="star" src=".\icon\star_5.png">
                <img class="star" src=".\icon\star_5.png">
                <img class="star" src=".\icon\star_5.png">
                <img class="star" src=".\icon\star_5.png">
                <p class="zahl"><?php echo htmlspecialchars($row["bewertung"]) ?></p>
            </section>

            <section class="ButtonLayout">
                <button id="playButton" class="Button Button_text">Watching Trailer</button>
            </section>    
        </div>
        <?php
            }
        } else {
            echo "<p>No cities found in the database.</p>";
        }   
        ?>
    <script src="./js/SlideShow.js"></script>
    </div>
    
</body>
</html>