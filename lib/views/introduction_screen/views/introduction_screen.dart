import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class IntroductionScreen extends StatefulWidget {
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
                    color: Color(Constant.witheColorLight)),
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
                    color: Color(Constant.witheColorLight)),
              ),
              SizedBox(
                height: constant.size.height * 0.050,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(Constant.witheColorLight),
                    borderRadius: BorderRadius.circular(12.0)),
                height: constant.size.height * 0.080,
                width: constant.size.width * 0.550,
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Start'.toUpperCase(),
                      style: TextStyle(
                          fontSize: Constant.fontSemiRegular,
                          fontWeight: FontWeight.bold,
                          color: Color(Constant.purpleColorDark)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
