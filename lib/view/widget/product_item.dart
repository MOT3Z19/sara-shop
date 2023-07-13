import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122,
      height: 173,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 122,
                height: 130,
                color: Colors.grey,
              ),
              Positioned(
                top: 0,
                right: 20,
                child: Stack(
                  children: [
                    Image.asset('images/discount.png'),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.only(start: 10, top: 5),
                      child: Column(
                        children: [
                          Text(
                            'Disc',
                            style: GoogleFonts.quicksand(
                                color: Colors.white, fontSize: 10),
                          ),
                          Text(
                            '40%',
                            style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
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
            children: [
              Text(
                'Camelia Heels',
                style: GoogleFonts.zillaSlab(
                    fontSize: 12, color: Color(0xFF57636F)),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$64',
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
                        decoration: TextDecoration.lineThrough
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
