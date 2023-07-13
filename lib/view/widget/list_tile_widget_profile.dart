import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetProfile extends StatelessWidget {
  const WidgetProfile({
    Key? key, required this.icon, required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        margin: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
        ),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Icon(
              icon,
              color: Color(0xFF126881),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: GoogleFonts.quicksand(
                color: Color(0xFF126881),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
