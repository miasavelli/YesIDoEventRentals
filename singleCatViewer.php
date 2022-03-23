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

// Get category ID
$category_id = filter_input(INPUT_GET, 'category_id', 
                            FILTER_VALIDATE_INT);
if ($category_id == NULL || $category_id == FALSE) {
    $category_id = 1;
}

// Get product Name
$product_name = filter_input(INPUT_GET, 'product_name', 
                            FILTER_VALIDATE_INT);
if ($product_name == NULL || $product_name == FALSE) {
    $product_name = 1;
}

// Get name for selected category
$queryCategory = 'SELECT * FROM categories
                      WHERE categoryID = :category_id';
$statement1 = $db->prepare($queryCategory);
$statement1->bindValue(':category_id', $category_id);
$statement1->execute();
$category = $statement1->fetch();
$category_name = $category['categoryName'];
$categories = $statement1->fetchAll();
$statement1->closeCursor();

// Get products for selected category
$queryProducts = 'SELECT * FROM products WHERE categoryID = :category_id';
$statement3 = $db->prepare($queryProducts);
$statement3->bindValue(':category_id', $category_id);
$statement3->execute();
$product = $statement3->fetch();
$products = $statement3->fetchAll();
$statement3->closeCursor();

// getAllCategories
$queryAllCategories = 'SELECT * FROM categories
                       ORDER BY categoryID';
$statement2 = $db->prepare($queryAllCategories);
$statement2->execute();
$categories = $statement2->fetchAll();
$statement2->closeCursor();

?>

<!DOCTYPE html>
<html>
<?php include('templates/header.php');    ?> 
<!-- the body section -->
<body>


<main>

<div class="container">
    <?php foreach ($categories as $category) : ?>
        <a class="dblock" href="singleCatViewer.php?category_id=<?php echo $category['categoryID']; ?>">
            <?php echo $category['categoryName']; ?>
        </a>
    <?php endforeach; ?>
</div>

<div class="site-section mt-5">
    <div class="container">
        <div class="row mb-5">

            <div class="col-12 section-title text-center mb-5">
                <div class="row mb-5">
                    <div class="col-12 section-title text-center mb-5">
                            <h2 class="dblock"><?php echo $category_name; ?></h2>
                            <br>
                    </div>
                </div>
                
                <div class="row">
                <?php foreach ($products as $product) : ?>
                    <div class="col-lg-4 mb-5 col-md-6">
                        <div class="wine_v_1 text-center pb-4">
                            <a href="" class="thumbnail d-block mb-4">
                                <img src="./<?php echo $product['imgURL']; ?>" style="height:380px;" alt="Image" class="img-fluid"></a>
                            <div>
                                <h3 class="heading mb-1"><a href="#"><?php echo $product['productName']; ?></a></h3>
                                <span class="price"><?php echo $product['productDesc']; ?></span>   
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>  

                </div>              
            </div>
        </div>
    </div>
  

<?php include('templates/footer.php');    ?> 
</div>
</main>  
</body>
</html>