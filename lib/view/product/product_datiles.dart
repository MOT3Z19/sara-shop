import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayaa_shop/controller/api/api_product_controller.dart';
import 'package:hayaa_shop/model/Product.dart';
import 'package:hayaa_shop/view/bottom_bar_screen/cart_screen.dart';

class ProductDetilesPage extends StatelessWidget {
  final Product product;
  final ProductController productController = Get.find<ProductController>();

  ProductDetilesPage({required this.product}) {
    product.title!;
    product.price!;
    product.description!;
    product.image!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(product.image!),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              product.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.cambo(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              product.description,
              style: GoogleFonts.mulish(
                fontSize: 15,
              ),
            ),
            Spacer(),
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {

                          }, child: Text('Order Now'),style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                      ),),),
                  SizedBox(width: 10,),
                  Text(
                    '54\$',
                    style: GoogleFonts.cambo(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
