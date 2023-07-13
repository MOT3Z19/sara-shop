import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayaa_shop/controller/api/api_product_controller.dart';

class CategoryScreen extends StatelessWidget {
  final ProductController productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: Center(
        child: Obx(() {
          if (productController.categories.isEmpty) {
            return CircularProgressIndicator();
          } else {
            return ListView.builder(
              itemCount: productController.categories.length,
              itemBuilder: (context, index) {
                final category = productController.categories[index];
                return ListTile(
                  title: Text(category),
                );
              },
            );
          }
        }),
      ),
    );
  }
}
