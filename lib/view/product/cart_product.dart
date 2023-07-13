import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayaa_shop/model/Product.dart';
import 'package:hayaa_shop/view/widget/cart_product_widget.dart';

class MyCart extends StatefulWidget {
  final Cart cart;

  MyCart(this.cart);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: GoogleFonts.quicksand(fontSize: 14, color: Color(0xFF7A8D9C)),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {},
            color: Color(0xFF7BCFE9)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: widget.cart.items.length,
                  itemBuilder: (context, index) {
                    final product = widget.cart.items[index];
                    return Card(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(start: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 114,
                                  height: 114,
                                  child: Image.network(product.image),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFE4E4E4),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          product.title,
                                          style: GoogleFonts.zillaSlab(
                                              fontSize: 14,
                                              color: Color(0xFF57636F)),
                                        ),
                                        SizedBox(
                                          width: 80,
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.delete,
                                            color: Color(0xFFACBAC3),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Color : Dark Grey',
                                      style: GoogleFonts.zillaSlab(
                                          fontSize: 10,
                                          color: Color(0xFF57636F)),
                                    ),
                                    Text(
                                      'Size : L',
                                      style: GoogleFonts.zillaSlab(
                                          fontSize: 14,
                                          color: Color(0xFF57636F)),
                                    ),
                                    Text(
                                      '\$76',
                                      style: GoogleFonts.nunito(
                                          fontSize: 18,
                                          color: Color(0xFF126881)),
                                    ),
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              _count = _count - 1;
                                            });
                                          },
                                          child: Text(
                                            '-',
                                            style: TextStyle(
                                                color: Color(0xFF57636F)),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              minimumSize: Size(23, 23),
                                              primary: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadiusDirectional
                                                        .only(
                                                            topStart:
                                                                Radius.circular(
                                                                    5),
                                                            bottomStart:
                                                                Radius.circular(
                                                                    5)),
                                              )),
                                        ),
                                        Container(child: Text('$_count')),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              _count = _count + 1;
                                            });
                                          },
                                          child: Text(
                                            '+',
                                            style: TextStyle(
                                                color: Color(0xFF57636F)),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              primary: Colors.white,
                                              minimumSize: Size(23, 23),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadiusDirectional
                                                        .only(
                                                            topEnd:
                                                                Radius.circular(
                                                                    5),
                                                            bottomEnd:
                                                                Radius.circular(
                                                                    5)),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0xFFACBAC3),
                              endIndent: 50,
                              indent: 50,
                            ),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  'Sub Total :',
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF57636F)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '\$152',
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFE4126B)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Subtotal',
                          style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF7A8D9C))),
                      Spacer(),
                      Text('\$0',
                          style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFE4126B))),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('CHECK OUT',
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 62),
                        primary: Color(0xFF126881),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        )),
                  ),
                  SizedBox(
                    height: 20,
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

class Cart {
  RxList items = [].obs;

  void addItem(Product product) {
    items.add(product);
  }

  void removeItem(Product product) {
    items.remove(product);
  }

  double getTotalPrice() {
    double total = 0;
    for (var item in items) {
      total += item.price;
    }
    return total;
  }
}
