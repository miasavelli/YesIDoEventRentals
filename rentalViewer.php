<?php
try {
    $dsn = 'mysql:host=localhost;dbname=rental_items';
    $username = 'root';
    $password = '';
    $db = new PDO($dsn, $username, $password);
} catch (PDOException $e) {
    $error_message = $e->getMessage();
    include('database_error.php');
    exit();
}

// Get categories
$queryCategory = 'SELECT products.productName, products.categoryID, products.productDesc, products.imgURL, categories.categoryName
FROM categories
INNER JOIN products
ON products.categoryID = categories.categoryID';
$queryCat = 'SELECT * FROM categories';
$statement1 = $db->prepare($queryCategory);
$statement2 = $db->prepare($queryCat);
$statement1->execute();
$statement2->execute();
$products = $statement1->fetchAll(); // gets all products
$categories = $statement2->fetchAll();
$statement1->closeCursor();
$statement2->closeCursor();


echo "<!DOCTYPE html><html>";
include('templates/header.php');
echo "<body><main><div class=\"site-section mt-5\">
            <div class=\"container\">
                <div class=\"row mb-5\">
                    <div class=\"col-12 section-title text-center mb-5\">";

                    

foreach($categories as $category) {
    echo "<div class=\"row mb-5\">";
    echo "<div class=\"col-12 section-title text-center mb-5\">";
    echo "<h2 class=\"dblock\">";
    echo $category['categoryName'];
    echo "</h2><br></div></div>";
    echo "<div class=\"row\">";

    foreach($products as $product) { 
        if ($product['categoryID'] == $category['categoryID']) {
            echo "<div class=\"col-lg-4 mb-5 col-md-6\">";
            echo "<div class=\"wine_v_1 text-center pb-4\">";
            echo "<a href=\"\" class=\"thumbnail d-block mb-4\"><img src=";
            echo $product['imgURL']; 
            echo " style=\"height:380px;\" alt=\"Image\" class=\"img-fluid\"></a><div><h3 class=\"heading mb-1\"><a href=\"#\">";
            echo $product['productName'];
            echo "</a></h3><span class=\"price\">";
            echo $product['productDesc'];
            echo "</span></div></div></div>";
        }
    }
    echo "</div>";

}

    echo "</div></div></div></div></main>";

include('templates/footer.php');
echo "</body></html>";

?>