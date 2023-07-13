import 'package:get/get.dart';
import 'package:hayaa_shop/model/Product.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../view/bottom_bar_screen/cart_screen.dart';

class ProductController extends GetxController {
  final String baseUrl = 'https://fakestoreapi.com';
  final String apiUrl = 'https://fakestoreapi.com/carts';

  final String productsUrl = '/products';
  final String categoriesUrl = '/products/categories';
  final String popularproducts = '/products';

  final _isLoading = true.obs;
  bool get isLoading => _isLoading.value;
  final Rx<Cart?> cart = Rx<Cart?>(null);

  final pupproducts = <Product>[].obs;


  final products = <Product>[].obs;
  var categories = <String>[].obs;

  @override
  void onInit() {
    fetchProducts();
    fetchCategories();
    super.onInit();
  }

  void fetchProducts() async {
    final response = await http.get(Uri.parse(baseUrl + productsUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      products.value = data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch products');
    }
  }

  void fetchCategories() async {
    final response = await http.get(Uri.parse(baseUrl + categoriesUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      categories.value = List<String>.from(data);
    } else {
      throw Exception('Failed to fetch categories');
    }
  }

  void fetchpopularproducts() async {
    final response = await http.get(Uri.parse(baseUrl + popularproducts));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      pupproducts.value = data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch Popular Products');
    }
  }

  List<Product> getProductsByCategory(String category) {
    return products.where((product) => product.category == category).toList();
  }




}
