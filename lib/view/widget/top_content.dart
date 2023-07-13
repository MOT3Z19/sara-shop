import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopContent extends StatelessWidget {
  const TopContent({
    required this.subtitle,
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
          color: const Color(0xFF7BCFE9),
          borderRadius: BorderRadiusDirectional.only(
            bottomEnd: Radius.circular(20),
            bottomStart: Radius.circular(20),
          )),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 30, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.zillaSlab(fontSize: 30, color: Colors.white),
            ),
            SizedBox(height: 10,),
            Text(
              subtitle,
              style: GoogleFonts.nunito(fontSize: 12, color: Colors.white),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
