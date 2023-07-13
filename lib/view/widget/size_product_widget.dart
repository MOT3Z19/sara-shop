import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeContoner extends StatelessWidget {
  const SizeContoner({Key? key, required this.text, required this.iscurrentPage}) : super(key: key);

  final String text;
  final bool iscurrentPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: iscurrentPage ? Color(0xFF126881) : Color(0xFFFFFFFF),
      ),
      width: 30,
      height: 30,
      child: Text(text,style: GoogleFonts.quicksand(fontSize: 12,color: iscurrentPage ? Color(0xFF57636F) : Color(0xFFFFFFFF),),),
    );
  }
}
