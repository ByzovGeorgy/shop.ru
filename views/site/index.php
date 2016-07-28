<?php include ROOT."/views/layouts/header.php"?>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <?php foreach ($this->categories as $category): ?>
                    <a href="/catalog/<?=$category['id']?>" class="list-group-item"><?=$category['name']?></a>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="col-md-9">
                <?php foreach ($products as $product): ?>
                <div class="col-sm-3">
                    <div class="product">
                        <div>
                            <a href="#"></a>
                            <img src="/images/products/<?=$product['image']?>" class="img-responsive">
                            </a>
                            <div class="product-info">
                                <h4><?=$product['name']?></h4>
                            </div>
                            <div class="product-price"><p><?=$product['price']?></p>
                                <div class="right">
                                    <a href="#" class="addInCart" data-id="<?=$product['id']?>">
                                        <span class="glyphicon glyphicon-shopping-cart text-center right"
                                              aria-hidden="true"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endforeach;?>
            </div>
        </div>
    </div>
<?php include ROOT."/views/layouts/footer.php"?>