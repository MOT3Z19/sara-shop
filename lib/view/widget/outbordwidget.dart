import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OutBoredung extends StatelessWidget {
  const OutBoredung({Key? key, required this.image, required this.title, required this.subtitle}) : super(key: key);

  final int image;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('images/image_$image.png'),
        SizedBox(height: 20,),
        Text(title,style: GoogleFonts.zillaSlab(fontSize: 18,color: Color(0xFF57636F)),),
        SizedBox(height: 10,),
        Text(subtitle,textAlign: TextAlign.center,style: GoogleFonts.nunito(fontSize: 14,color: Color(0xFF7A8D9C)))
      ],
    );
  }
}
