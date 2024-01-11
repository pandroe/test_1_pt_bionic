import 'package:flutter/material.dart';
import 'package:test_satu_pt_bionic/utils/constant.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Constant constant = Constant(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/bg-app-bar-orange.png'),
          Padding(
            padding: const EdgeInsets.only(
              top: 100.0,
              right: 18.0,
              left: 18.0,
              bottom: 18.0,
            ),
            child: ListView(
              children: [
                Container(
                  height: constant.size.height * 1.100,
                  decoration: BoxDecoration(
                    color: Color(Constant.orangeColorLight),
                    borderRadius: BorderRadius.circular(21.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 18.0,
                          right: 21,
                          left: 21,
                          bottom: 18.0,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              child: Image.asset('assets/images/avatar.png'),
                            ),
                            SizedBox(
                              width: constant.size.width * 0.055,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: constant.size.width * 0.450,
                                  child: Text(
                                    'Daffa Pandu D.',
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: Constant.fontExtraBig,
                                      fontWeight: FontWeight.bold,
                                      color: Color(Constant.whiteColorLight),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: constant.size.height * 0.010,
                                ),
                                Container(
                                  width: constant.size.width * 0.450,
                                  child: Text(
                                    'PT. Bionic Teknologi Indonesia',
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: Constant.fontSemiRegular,
                                      fontWeight: FontWeight.bold,
                                      color: Color(Constant.whiteColorLight),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(Constant.purpleColorLight),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(21.0),
                              bottomRight: Radius.circular(21.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 50.0, right: 25.0, left: 25.0),
                            child: Column(
                              children: [
                                buildCategory('Buku International'),
                                buildDivider(),
                                buildCategory('Buku Nasional'),
                                buildDivider(),
                                buildCategory('Buku Sejarah'),
                                buildDivider(),
                                buildCategory('Buku Olahraga'),
                                buildDivider(),
                                buildCategory('Buku Tematik'),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategory(String categoryName) {
    Constant constant = Constant(context);
    return Column(
      children: [
        SizedBox(
          height: constant.size.height * 0.010,
        ),
        Container(
          width: constant.size.width * 0.450,
          child: Text(
            categoryName,
            style: TextStyle(
              fontSize: Constant.fontSemiBig,
              fontWeight: FontWeight.bold,
              color: Color(Constant.whiteColorLight),
            ),
          ),
        ),
        SizedBox(
          height: constant.size.height * 0.050,
        ),
        Container(
          height: constant.size.height * 0.005,
          width: constant.size.width * 0.800,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            color: Color(Constant.whiteColorLight),
          ),
        ),
        SizedBox(
          height: constant.size.height * 0.045,
        ),
      ],
    );
  }

  Widget buildDivider() {
    Constant constant = Constant(context);
    return SizedBox(
      height: constant.size.height * 0.045,
    );
  }
}
