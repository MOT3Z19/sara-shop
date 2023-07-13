import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
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
                          'Levi’s Jeans',
                          style: GoogleFonts.zillaSlab(
                              fontSize: 14, color: Color(0xFF57636F)),
                        ),
                    SizedBox(width: 80,),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              color: Color(0xFFACBAC3),
                            ))
                      ],
                    ),
                    Text(
                      'Color : Dark Grey',
                      style: GoogleFonts.zillaSlab(
                          fontSize: 10, color: Color(0xFF57636F)),
                    ),
                    Text(
                      'Size : L',
                      style: GoogleFonts.zillaSlab(
                          fontSize: 14, color: Color(0xFF57636F)),
                    ),
                    Text(
                      '\$76',
                      style: GoogleFonts.nunito(
                          fontSize: 18, color: Color(0xFF126881)),
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
                            style: TextStyle(color: Color(0xFF57636F)),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                              minimumSize: Size(23, 23),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.only(
                                    topStart: Radius.circular(5),
                                    bottomStart: Radius.circular(5)),
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
                            style: TextStyle(color: Color(0xFF57636F)),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                              primary: Colors.white,
                              minimumSize: Size(23, 23),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.only(
                                    topEnd: Radius.circular(5),
                                    bottomEnd: Radius.circular(5)),
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
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
