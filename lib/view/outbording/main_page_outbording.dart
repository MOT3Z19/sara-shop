import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayaa_shop/view/widget/indoctorwidget.dart';
import 'package:hayaa_shop/view/widget/outbordwidget.dart';


class Outbodring extends StatefulWidget {
  const Outbodring({Key? key}) : super(key: key);

  @override
  State<Outbodring> createState() => _OutbodringState();
}

class _OutbodringState extends State<Outbodring> {
  int _currentPageIndex = 0;
  late PageController _pageController;

  void initState() {
    super.initState();
    _pageController = PageController();
  }

  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(

          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int currentPageIndex) {
                    setState(() => _currentPageIndex = currentPageIndex);
                  },
                  scrollDirection: Axis.horizontal,
                  children: [
                    OutBoredung(
                        image: 11,
                        title: 'SHOPPING FROM HOME',
                        subtitle: 'Lorem ipsum dolor sit amet,'
                            'Consectetur adipiscing elit. Interger'
                            'Maximus accumsan erat ide facilisis.'),
                    OutBoredung(
                        image: 22,
                        title: 'PRODUK ORIGINAL',
                        subtitle: 'Lorem ipsum dolor sit amet,'
                            'Consectetur adipiscing elit. Interger'
                            'Maximus accumsan erat ide facilisis.'),
                    OutBoredung(
                        image: 33,
                        title: 'EXPRESS DELIVERY',

                        subtitle: ''
                            'Lorem ipsum dolor sit amet,'
                            'Consectetur adipiscing elit. Interger'
                            'Maximus accumsan erat ide facilisis.'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Indctor(iscurrentPage: _currentPageIndex == 0),
                  SizedBox(width: 4,),
                  Indctor(iscurrentPage: _currentPageIndex == 1),
                  SizedBox(width: 4,),
                  Indctor(iscurrentPage: _currentPageIndex == 2),
                ],
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          _pageController.animateToPage(2,
                              duration: Duration(seconds: 1), curve: Curves.easeIn);
                        },
                        child: Text(
                          'Skip',
                          style: GoogleFonts.quicksand(
                              fontSize: 14, color: Color(0xFFACBAC3)),
                        )),
                    Spacer(),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity, 50),
                              primary: Color(0xFF126881),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              )),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/log_in');
                          },
                          child: Text(
                            'Next',
                            style: GoogleFonts.quicksand(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF)),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
