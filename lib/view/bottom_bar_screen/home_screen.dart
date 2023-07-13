import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayaa_shop/controller/api/api_product_controller.dart';
import 'package:hayaa_shop/view/bottom_bar_screen/cart_screen.dart';
import 'package:hayaa_shop/view/bottom_bar_screen/favarite_screen.dart';
import 'package:hayaa_shop/view/product/product_datiles.dart';
import 'package:hayaa_shop/view/product/product_page.dart';
import 'package:hayaa_shop/view/widget/tb_screen.dart';


class HomeScreen extends StatefulWidget {
  final ProductController productController = Get.find<ProductController>();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ProductController productController = Get.find<ProductController>();

  double _rating = 4.5;

  Color _favIconColor = Colors.grey;

  Favarite favarite = Favarite();

  Cart cart = Cart();
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 30),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(80, 50),
                      primary: Color(0xFF7BCFE9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                ),
               Spacer(),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(50, 50),
                      primary: Color(0xFF7BCFE9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'Category',
            style:
                GoogleFonts.zillaSlab(fontSize: 20, color: Color(0xFF7A8D9C)),
          ),
          SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 100,
            ),
            child: Obx(
              () => productController.categories.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: productController.categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var category = productController.categories[index];
                        return GestureDetector(
                          onTap: () {
                            Get.to(ProductListPage(category: category));
                          },
                          child: Card(
                            child: Container(
                              color: Colors.grey.shade100,
                              width: 130,
                              height: 20,
                              child: Center(
                                child: Text(
                                  category,
                                  style: GoogleFonts.mulish(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF7BCFE9),
              ),
              width: double.infinity,
              height: 65,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('images/icon_1.png'),
                    SizedBox(width: 10),
                    Text(
                      '\$1.500',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 45),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/icon_2.png'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Pay',
                          style: GoogleFonts.quicksand(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 35),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/icon_3.png'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Top Up',
                          style: GoogleFonts.quicksand(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 35),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/icon_4.png'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Pay',
                          style: GoogleFonts.quicksand(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Sale Discount',
            style:
                GoogleFonts.zillaSlab(fontSize: 20, color: Color(0xFF7A8D9C)),
          ),
          SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 180,
            ),
            child: GetX<ProductController>(
              builder: (productController) {
                return ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: productController.products.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final product = productController.products[index];

                      return GestureDetector(
                        onTap: () {
                          Get.to(
                            ProductDetilesPage(product: product),
                          );
                        },
                        child: Container(
                          width: 122,
                          height: 173,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 122,
                                    height: 130,
                                    color: Colors.grey,
                                    child: Image.network(product.image,
                                        fit: BoxFit.fill),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 20,
                                    child: Stack(
                                      children: [
                                        Image.asset('images/discount.png'),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  start: 10, top: 5),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Disc',
                                                style: GoogleFonts.quicksand(
                                                    color: Colors.white,
                                                    fontSize: 10),
                                              ),
                                              Text(
                                                '40%',
                                                style: GoogleFonts.quicksand(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.zillaSlab(
                                        fontSize: 14, color: Color(0xFF57636F)),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        product.price.toString(),
                                        style: GoogleFonts.nunito(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF126881)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '\$125',
                                        style: GoogleFonts.nunito(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF7A8D9C),
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Popular',
            style:
                GoogleFonts.zillaSlab(fontSize: 20, color: Color(0xFF7A8D9C)),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GetX<ProductController>(
              builder: (productController) {
                return ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: productController.products.length,
                    itemBuilder: (context, index) {
                      final product = productController.products[index];

                      return GestureDetector(
                        onTap: () {
                          Get.to(
                            ProductDetilesPage(product: product),
                          );
                        },
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              clipBehavior: Clip.antiAlias,
                              width: 100,
                              height: 140,
                              child: Image.network(product.image),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width:100,
                                      child: Text(
                                        product.title,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.zillaSlab(
                                            fontSize: 14,
                                            color: Color(0xFF57636F)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        favarite.addItem(product);
                                        setState(() {
                                          if(_favIconColor == Colors.grey){
                                            _favIconColor = Colors.red;
                                          }else{
                                            _favIconColor = Colors.grey;
                                          }
                                        });
                                      },
                                      icon: Icon(Icons.favorite),
                                      color: _favIconColor,


                                    ),
                                  ],
                                ),
                                //    Text(
                                //     snapshot.data![index].productsCount,
                                //      style: GoogleFonts.nunito(
                                //        fontSize: 18,
                                //        color: Color(0xFF126881),
                                //      ),
                                //    ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      initialRating: _rating,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 15,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 1),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        setState(() {
                                          _rating = rating;
                                        });
                                      },
                                    ),
                                    Text('$_rating'),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        cart.addItem(product);
                                        Get.to(CartPage(cart));
                                      },
                                      child: Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Colors.white,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          minimumSize: Size(55, 30),
                                          primary: Color(0xFF7BCFE1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(40),
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
/*

 Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          clipBehavior: Clip.antiAlias,
                          width: 105,
                          height: 140,
                          child: Image.network(snapshot.data![index].image),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  snapshot.data![index].title,
                                  style: GoogleFonts.zillaSlab(
                                      fontSize: 14, color: Color(0xFF57636F)),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: Color(0xFFE4126B),
                                  ),
                                ),
                              ],
                            ),
                            //    Text(
                            //     snapshot.data![index].productsCount,
                            //      style: GoogleFonts.nunito(
                            //        fontSize: 18,
                            //        color: Color(0xFF126881),
                            //      ),
                            //    ),
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: _rating,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 15,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 1),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    setState(() {
                                      _rating = rating;
                                    });
                                  },
                                ),
                                Text('$_rating'),
                                SizedBox(
                                  width: 90,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(55, 30),
                                      primary: Color(0xFF7BCFE1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                40),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
 */
