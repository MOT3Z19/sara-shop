import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TbWidget extends StatelessWidget {
  const TbWidget({Key? key, required this.image, required this.title})
      : super(key: key);

  final int image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Image.asset(
          'images/image_$image.png',
          width: 62,
          height: 62,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.quicksand(fontSize: 18, color: Color(0xFF126881)),
        ),
      ],
    );
  }
}
