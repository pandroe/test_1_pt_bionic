import 'package:flutter/material.dart';
import 'package:test_satu_pt_bionic/utils/constant.dart';
import 'package:test_satu_pt_bionic/widgets/custom_field_form_widgets.dart';

import '../../../main.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = 'login-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked =
      false; // Pindahkan ke sini agar nilai dapat diubah dan diperbarui

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
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: Constant.fontExtraBig,
                      fontWeight: FontWeight.bold,
                      color: Color(Constant.blackColorLight),
                    ),
                  ),
                ),
                SizedBox(
                  height: constant.size.height * 0.040,
                ),
                CustomTextFormFieldWidgets(hintText: 'Name'),
                SizedBox(
                  height: constant.size.height * 0.025,
                ),
                CustomTextFormFieldWidgets(hintText: 'Email'),
                SizedBox(
                  height: constant.size.height * 0.025,
                ),
                CustomTextFormFieldWidgets(
                  hintText: 'Password',
                ),
                SizedBox(
                  height: constant.size.height * 0.050,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                        ),
                        Text(
                          'Ingat saya?',
                          style: TextStyle(
                            fontSize: Constant.fontSemiBig,
                            fontWeight: FontWeight.bold,
                            color: Color(Constant.blackColorLight),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Lupa Email?',
                        style: TextStyle(
                          fontSize: Constant.fontSemiBig,
                          fontWeight: FontWeight.bold,
                          color: Color(Constant.blackColorLight),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: constant.size.height * 0.025,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(Constant.purpleColorDark),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  height: constant.size.height * 0.080,
                  width: constant.size.width * 0.550,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeNavigation(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Start'.toUpperCase(),
                        style: TextStyle(
                          fontSize: Constant.fontSemiRegular,
                          fontWeight: FontWeight.bold,
                          color: Color(Constant.whiteColorLight),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: constant.size.height * 0.100,
                ),
                Text(
                  'Apa kamu mau mengganti password baru?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Constant.fontSemiBig,
                    fontWeight: FontWeight.bold,
                    color: Color(Constant.purpleColorLight),
                  ),
                ),
                SizedBox(
                  height: constant.size.height * 0.025,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'New Password?',
                    style: TextStyle(
                      fontSize: Constant.fontSemiBig,
                      fontWeight: FontWeight.bold,
                      color: Color(Constant.blackColorLight),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
