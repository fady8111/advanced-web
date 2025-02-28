<!DOCTYPE html>
<html lang="en">
<head>
    <title> Assignment #1 </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.min.css">
    
</head>
<body>
    <h1> exercise 1</h1>
    <div>
        <?php 
        $x = 10;
        $y = 7 ;
        echo "<p> $x + $y = " . $x + $y . "</p>" ;
        echo "<p> $x - $y = " . $x - $y . "</p>" ;
        echo "<p> $x * $y = " . $x * $y . "</p>" ;
        echo "<p> $x / $y = " . $x / $y . "</p>" ;
        echo "<p> $x % $y = " . $x % $y . "</p>" ;
        ?>
    </div>
    <hr>
    <h1> exercise 2</h1>
    <div>
        <?php 
        if (date('F' , time()) == 'August') 
        echo "it's August , so it's really hot .";
        else 
        echo "not August , so at least not in the peak of the heat";
        ?>
        <br>
        <!-- another way  -->
        <?php echo date('F' , time()) == 'August' ? "it's August , so it's really hot ." :"not August , so at least not in the peak of the heat" ?>
    </div>
    <hr>
    <h1> exercise 3 </h1>
    <div>
        <?php
        for ($i=0; $i <= 12 ; $i++) { 
            echo "$i * $i = " . $i * $i ."<br>"; 
        }
        ?>
    </div>
    <hr>
    <h1> exercise 4</h1>
    <div>
        <?php echo "<table>"?>
        <?php
        for ($col=1; $col <= 7; $col++) { 
            echo "<tr>";
            for ($row=1; $row <= 7 ; $row++) { 
                echo "<td>";
                echo $row * $col;
                echo "</td>";
            }
            echo "</tr>";
        }
        ?>
        <?php echo "</table>"?>
    </div>


</body>
</html>