import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayaa_shop/controller/api/api_product_controller.dart';
import 'package:hayaa_shop/model/Product.dart';
import 'package:hayaa_shop/view/bottom_bar_screen/cart_screen.dart';

class ProductListPage extends StatelessWidget {
  final String category;
  final ProductController productController = Get.find<ProductController>();

  ProductListPage({required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> products =
    productController.getProductsByCategory(category);
    Cart cart = Get.put(Cart());

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 243
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return Container(
              color: Colors.grey.shade100,
              width: 155,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 120,
                      width: 132,
                      child: Image.network(product.image,),
                    ),
                    SizedBox(height: 5,),
                    Text('${product.price.toString()}\$'),
                    SizedBox(height: 5,),
                    Text(product.title,style: GoogleFonts.allerta(fontSize: 15),overflow: TextOverflow.ellipsis,maxLines: 1,),
                    ElevatedButton(onPressed: (){
                      cart.addItem(product);
                    }, child: Text('Order'),),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

