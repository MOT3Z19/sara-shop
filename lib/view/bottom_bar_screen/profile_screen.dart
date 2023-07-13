import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayaa_shop/view/widget/list_tile_widget_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,

            ),
            Text(
              'Kylie',
              style: GoogleFonts.nunito(
                  color: Color(0xFF57636F),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Kylie_04@gmail.com',
              style: GoogleFonts.nunito(fontSize: 12, color: Color(0xFF57636F)),
            ),
            SizedBox(
              height: 30,
            ),
            WidgetProfile(icon: Icons.person, title: 'Account'),
            SizedBox(
              height: 5,
            ),
            WidgetProfile(
                icon: Icons.location_on_outlined, title: 'My Address'),
            SizedBox(
              height: 5,
            ),
            WidgetProfile(icon: Icons.calendar_today, title: 'My Order'),
            SizedBox(
              height: 5,
            ),
            WidgetProfile(icon: Icons.favorite_border, title: 'My Favourites'),
            SizedBox(
              height: 5,
            ),
            WidgetProfile(icon: Icons.payment, title: 'Payment'),
            SizedBox(
              height: 5,
            ),
            WidgetProfile(icon: Icons.settings_outlined, title: 'Settings'),
          ],
        ),
      ),
    );
  }
}
