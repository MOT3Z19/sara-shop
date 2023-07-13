import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayaa_shop/controller/api/api_auth_controller.dart';
import 'package:hayaa_shop/model/user.dart';
import 'package:hayaa_shop/utils/apiresponse.dart';
import 'package:hayaa_shop/utils/contextExtenssion.dart';

import '../widget/top_content.dart';

class RegasterScreen extends StatefulWidget {
  const RegasterScreen({Key? key}) : super(key: key);

  @override
  State<RegasterScreen> createState() => _RegasterScreenState();
}

class _RegasterScreenState extends State<RegasterScreen> {
  late TextEditingController _nameeditingController;
  late TextEditingController _emaileditingController;
  late TextEditingController _passwordeditingController;
  late TextEditingController _confrimpasswordeditingController;
  String _gender = 'M';
  String? _emailError;
  String? _passwordError;
  String? _nameError;

   bool _isobscore =true;

  void initState() {
    super.initState();
    _nameeditingController = TextEditingController();
    _emaileditingController = TextEditingController();
    _passwordeditingController = TextEditingController();
    _confrimpasswordeditingController = TextEditingController();
  }

  void dispose() {
    _nameeditingController.dispose();
    _emaileditingController.dispose();
    _passwordeditingController.dispose();
    _confrimpasswordeditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF7BCFE9),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/log_in');
              },
              child: Text(
                'SIGN IN',
                style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold, fontSize: 14,color: Colors.white),
              ))
        ],
      ),
      body: ListView(
        children: [
          TopContent(
            title: 'Sign up',
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
                  controller: _nameeditingController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Your name',
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
                TextField(
                  controller: _emaileditingController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Your email',
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
                TextField(
                  controller: _passwordeditingController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !_isobscore,
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
                    hintText: 'Your password',
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
                TextField(
                  controller: _confrimpasswordeditingController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !_isobscore,
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
                    hintText: 'Confirm password',
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
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    performLogin();
                  },
                  child: Text('SIGN UP',
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 62),
                      onPrimary: Color(0xFF126881),
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

  void performLogin() {
    if (cheackData()) {
      _register();
    }
  }

  bool cheackData() {
    ChackData();
    if (_nameeditingController.text.isNotEmpty &&
        _emaileditingController.text.isNotEmpty &&
        _confrimpasswordeditingController.text.isNotEmpty &&
        _passwordeditingController.text.isNotEmpty) {
      return true;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text('Enter Requrte Data'),
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    return false;
  }

  void ChackData() {
    setState(() {
      _emailError = _emaileditingController.text.isEmpty ? 'Enter Email' : null;
      _passwordError =
          _passwordeditingController.text.isEmpty ? 'Enter Password' : null;
    });
  }

  Future<void> _register() async {
    ApiResponse apiResponse = await ApiAuthController().register(user);
    if(apiResponse.success ){
      Navigator.pop(context);
    }
    context.showSnackBar(message: apiResponse.message,error: !apiResponse.success);
  }
  User get user{
    User user = User();
    user.fullName = _nameeditingController.text;
    user.email = _emaileditingController.text;
    user.password = _passwordeditingController.text;
    user.gender = _gender;

    return user;
  }
}
