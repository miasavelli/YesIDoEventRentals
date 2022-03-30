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
$queryCategory = 'SELECT * FROM categories';
$statement1 = $db->prepare($queryCategory);
$statement1->execute();
$category = $statement1->fetch();
$categories = $statement1->fetchAll();
$statement1->closeCursor();

//Get products for selected category
$queryProducts = 'SELECT * FROM products';
$statement3 = $db->prepare($queryProducts);
$statement3->execute();
$product = $statement3->fetch();
$products = $statement3->fetchAll();
$statement3->closeCursor();
?>

<!DOCTYPE html>
<html>
<?php include('templates/header.php');    ?>

<body>
    <main>

        <div class="site-section mt-5">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-12 section-title text-center mb-5">


                        <?php foreach ($categories as $category) : ?>

                        <div class="row mb-5">
                            <div class="col-12 section-title text-center mb-5">
                                <h2 class="dblock"><?php echo $category['categoryName']; ?></h2>
                                <br>
                            </div>
                        </div>
                        <div class="row">

                            <?php foreach ($products as $product ) : 
                                if ($product['categoryID'] == $category['categoryID']) { ?>

                                <div class="col-lg-4 mb-5 col-md-6">
                                    <div class="wine_v_1 text-center pb-4">
                                        <a href="" class="thumbnail d-block mb-4"><img src="./<?php echo $product['imgURL']; ?>" style="height:380px;" alt="Image" class="img-fluid"></a>
                                        <div>
                                            <h3 class="heading mb-1"><a href="#"><?php echo $product['productName']; ?></a>
                                            </h3>
                                            <span class="price"><?php echo $product['productDesc']; ?></span>
                                        </div>
                                    </div>
                                </div>
                            <?php } endforeach; ?>
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <?php include('templates/footer.php');    ?>
</body>

</html>