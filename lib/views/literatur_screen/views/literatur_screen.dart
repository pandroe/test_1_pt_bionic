import 'package:flutter/material.dart';
import 'package:test_satu_pt_bionic/utils/constant.dart';

class LiteraturScreen extends StatefulWidget {
  static String routeName = 'literature-screen';
  const LiteraturScreen({Key? key}) : super(key: key);

  @override
  _LiteraturScreenState createState() => _LiteraturScreenState();
}

class _LiteraturScreenState extends State<LiteraturScreen> {
  @override
  Widget build(BuildContext context) {
    Constant constant = Constant(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/bg-app-bar-purple.png'),
          Padding(
            padding: const EdgeInsets.only(
              top: 100.0,
              right: 18.0,
              left: 18.0,
              bottom: 18.0,
            ),
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      height: constant.size.height * 0.150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(Constant.orangeColorLight),
                        ),
                      ),
                      child: Image.asset('assets/images/book.png'),
                    ),
                    SizedBox(
                      height: constant.size.height * 0.050,
                    ),
                    Center(
                      child: Text(
                        'Literatur',
                        style: TextStyle(
                          fontSize: Constant.fontExtraBig,
                          fontWeight: FontWeight.bold,
                          color: Color(Constant.blackColorLight),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: constant.size.height * 0.025,
                    ),
                    Center(
                      child: Text(
                        'Mari kita membaca banyak dari berbagai sumber',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: Constant.fontRegular,
                          fontWeight: FontWeight.bold,
                          color: Color(Constant.blackColorLight),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: constant.size.height * 0.050,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildLiteratureContainer('12', 'Sumber'),
                        _buildLiteratureContainer('50', 'Yang sudah di baca'),
                      ],
                    ),
                    SizedBox(
                      height: constant.size.height * 0.050,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(Constant.purpleColorDark),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        minimumSize: Size(
                          constant.size.width * 0.550,
                          constant.size.height * 0.080,
                        ),
                      ),
                      child: Text(
                        'Start'.toUpperCase(),
                        style: TextStyle(
                          fontSize: Constant.fontSemiRegular,
                          fontWeight: FontWeight.bold,
                          color: Color(Constant.whiteColorLight),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLiteratureContainer(String count, String label) {
    Constant constant = Constant(context);
    return Container(
      height: constant.size.height * 0.230,
      decoration: BoxDecoration(
        color: Color(Constant.orangeColorLight),
        borderRadius: BorderRadius.circular(21.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 18.0,
              horizontal: 21.0,
            ),
            child: Container(
              width: constant.size.width * 0.250,
              child: Center(
                child: Text(
                  count,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: Constant.fontExtraBig,
                    fontWeight: FontWeight.bold,
                    color: Color(Constant.whiteColorLight),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(Constant.orangeColorDark),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21.0),
                  bottomRight: Radius.circular(21.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50.0,
                  right: 25.0,
                  left: 25.0,
                ),
                child: Column(
                  children: [
                    Container(
                      width: constant.size.width * 0.250,
                      child: Center(
                        child: Text(
                          label,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: Constant.fontRegular,
                            fontWeight: FontWeight.bold,
                            color: Color(Constant.whiteColorLight),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
