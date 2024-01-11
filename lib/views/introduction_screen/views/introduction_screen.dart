import 'package:flutter/material.dart';
import 'package:test_satu_pt_bionic/views/login_screen/views/login_screen.dart';

import '../../../utils/constant.dart';

class IntroductionScreen extends StatefulWidget {
  static const String routeName = 'home-screen';
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    Constant constant = Constant(context);
    return Scaffold(
        backgroundColor: Color(Constant.purpleColorLight),
        body: Padding(
          padding: const EdgeInsets.only(top: 60.0, right: 18.0, left: 18.0),
          child: Column(
            children: [
              Text(
                'Introduction',
                style: TextStyle(
                    fontSize: Constant.fontExtraBig,
                    fontWeight: FontWeight.bold,
                    color: Color(Constant.whiteColorLight)),
              ),
              SizedBox(
                height: constant.size.height * 0.120,
              ),
              Image.asset('assets/images/book.png'),
              SizedBox(
                height: constant.size.height * 0.050,
              ),
              Text(
                'Membaca Buku adalah jembatan Ilmu untuk menuju kesuksesan',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: Constant.fontExtraBig,
                    fontWeight: FontWeight.bold,
                    color: Color(Constant.whiteColorLight)),
              ),
              SizedBox(
                height: constant.size.height * 0.050,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(Constant.whiteColorLight),
                    borderRadius: BorderRadius.circular(12.0)),
                height: constant.size.height * 0.080,
                width: constant.size.width * 0.550,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, LoginScreen.routeName, (route) => false);
                  },
                  child: Center(
                    child: Text(
                      'Start'.toUpperCase(),
                      style: TextStyle(
                          fontSize: Constant.fontSemiRegular,
                          fontWeight: FontWeight.bold,
                          color: Color(Constant.purpleColorLight)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
