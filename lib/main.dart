import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayaa_shop/controller/api/api_auth_controller.dart';
import 'package:hayaa_shop/controller/api/api_product_controller.dart';
import 'package:hayaa_shop/view/auth_screen/enter_email_resend_code.dart';
import 'package:hayaa_shop/view/auth_screen/enter_new_password.dart';
import 'package:hayaa_shop/view/auth_screen/enter_phone.dart';
import 'package:hayaa_shop/view/auth_screen/forget_password.dart';
import 'package:hayaa_shop/view/auth_screen/launchscreen.dart';
import 'package:hayaa_shop/view/auth_screen/login_screnn.dart';
import 'package:hayaa_shop/view/auth_screen/register_screen.dart';
import 'package:hayaa_shop/view/bottom_bar_screen/bottom_bar.dart';
import 'package:hayaa_shop/view/bottom_bar_screen/home_screen.dart';
import 'package:hayaa_shop/view/outbording/main_page_outbording.dart';
import 'package:hayaa_shop/view/product/cart_product.dart';

import 'view/product/CategoryScreen.dart';

void main() {
  Get.put(ProductController());
  Get.put(LoginController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
    //  home: GetBuilder<LoginController>(
    //    init: LoginController(),
    //    builder: (controller) => LoginScreen(),
    //  ),
      theme: ThemeData(
        bottomAppBarTheme: BottomAppBarTheme(
          color: Color(0xFF7BCFE9),

        ),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF7BCFE9)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF7BCFE9),
                minimumSize: Size(double.infinity, 40))),
        iconTheme: IconThemeData(
          color: Color(0xFF126881),
        ),
      ),
      initialRoute: '/outline',
      routes: {
        '/outline': (context) => Outbodring(),
        '/log_in': (context) => LoginScreen(),
        '/log_up': (context) => RegasterScreen(),
        '/enter_email': (context) => EnterEmail(),
        '/enter_password': (context) => EnterNewPassword(),
        '/enter_phone': (context) => EnterPhone(),
        '/forget_password': (context) => ForgetPassword(),
        '/home_screen': (context) => HomeScreen(),
        '/bottombar': (context) => BottomBar(),
        '/launchScreen': (context) => LaunchScreen(),
      },
    );
  }
}
