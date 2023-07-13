import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayaa_shop/controller/api/api_auth_controller.dart';
import 'package:hayaa_shop/utils/apiresponse.dart';
import 'package:hayaa_shop/utils/contextExtenssion.dart';
import 'package:hayaa_shop/view/bottom_bar_screen/bottom_bar.dart';
import 'package:hayaa_shop/view/bottom_bar_screen/home_screen.dart';
import 'package:hayaa_shop/view/widget/top_content.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _RegasterScreenState();
}

class _RegasterScreenState extends State<LoginScreen> {
  late TextEditingController _emaileditingController;
  late TextEditingController _passwordeditingController;
  String? _emailError;
  String? _passwordError;
   bool _isobscore =true;

  void initState() {
    super.initState();
    _emaileditingController = TextEditingController();
    _passwordeditingController = TextEditingController();
  }

  void dispose() {
    _emaileditingController.dispose();
    _passwordeditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.find();

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF7BCFE9),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/log_up');
              },
              child: Text(
                'SIGN UP',
                style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white),
              ))
        ],
      ),
      body: ListView(
        children: [
          TopContent(
            title: 'Sign in',
            subtitle:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n'
                'Integer maximus accumsan erat id facilisis.',
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                TextField(
                  controller: _emaileditingController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFFF6F6F7),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.blue,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _passwordeditingController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText:  _isobscore,
                  decoration: InputDecoration(
                               suffixIcon: IconButton(
                                 onPressed: () {
                                   setState(() {
                                     _isobscore = !_isobscore;
                                   });
                                 },
                                 icon: Icon(
                                     _isobscore ? Icons.visibility : Icons.visibility_off),
                               ),
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFFF6F6F7),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.blue,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, '/forget_password');
                      },
                      child: Text(
                        'Forgot password?',
                        style: GoogleFonts.quicksand(
                            fontSize: 12, color: Color(0xFFE41A4A)),
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () async {
                    final username = _emaileditingController.text;
                    final password = _passwordeditingController.text;
                    final loginSuccess = await loginController.login(username, password);

                    if (loginSuccess) {
                      // Navigate to the home screen
                      Get.off(BottomBar());
                    } else {
                      // Show an error message or handle login failure
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Login Failed'),
                          content: Text('Invalid username or password.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Get.back(); // Dismiss the dialog
                              },
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: Text('SIGN IN',
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
                  height: 70,
                ),
                Text(
                  'Or sign up with social media',
                  style: GoogleFonts.nunito(
                      fontSize: 12, color: Color(0xFF7A8D9C)),
                ),
                SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset('images/google.png'),
                      SizedBox(
                        width: 20,
                      ),
                      Text('CONTINUE WITH GOOGLE',
                          style: GoogleFonts.quicksand(
                              color: Color(0xFF57636F),
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 1,
                      minimumSize: Size(double.infinity, 62),
                      primary: Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset('images/facebook.png'),
                      SizedBox(
                        width: 20,
                      ),
                      Text('CONTINUE WITH FACEBOOK',
                          style: GoogleFonts.quicksand(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 62),
                      elevation: 1,
                      primary: Color(0xFF1877F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

 //void performLogin() {
 //  if (cheackData()) {
 //    _login();
 //  }
 //}

 // bool cheackData() {
 //   ChackData();
 //   if (_emaileditingController.text.isNotEmpty &&
 //       _passwordeditingController.text.isNotEmpty) {
 //     return true;
 //   }
 //   ScaffoldMessenger.of(context).showSnackBar(
 //     SnackBar(
 //       backgroundColor: Colors.red,
 //       content: Text('Enter Requrte Data'),
 //       duration: Duration(seconds: 3),
 //       behavior: SnackBarBehavior.floating,
 //       shape: RoundedRectangleBorder(
 //         borderRadius: BorderRadius.circular(10),
 //       ),
 //     ),
 //   );
 //   return false;
 // }
 // Future<void> _login() async {
 //   ApiResponse apiResponse = await ApiAuthController().login(
 //       email: _emaileditingController.text,
 //       password: _passwordeditingController.text);
 //   if(apiResponse.success){
 //     Navigator.pushNamed(context, '/bottombar');
 //   }
 //   context.showSnackBar(message: apiResponse.message, error:  !apiResponse.success);
 // }
 // void ChackData() {
 //   setState(() {
 //     _emailError = _emaileditingController.text.isEmpty ? 'Enter Email' : null;
 //     _passwordError =
 //         _passwordeditingController.text.isEmpty ? 'Enter Password' : null;
 //   });
 // }


}
