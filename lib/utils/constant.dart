import 'package:flutter/widgets.dart';

class Constant {
  // regular = normal, small < regular < big
  static const double fontExtraSmall = 10.0;
  static const double fontSmall = 12.0;
  static const double fontSemiSmall = 14.0;
  static const double fontRegular = 15.0;
  static const double fontSemiRegular = 16.0;
  static const double fontSemiBig = 18.0;
  static const double fontBig = 20.0;
  static const double fontExtraBig = 28.0;
  static const double fontTitle = 24.0;

  static const int purpleColorLight = 0xFF9934C9;
  static const int purpleColorDark = 0xFF4D196B;
  static const int orangeColorLight = 0xFF1E1C24;
  static const int orangeColorDark = 0xFFFD5216;
  static const int witheColorLight = 0xFFFFFFFF;

  final Size size;

  Constant(BuildContext context) : size = MediaQuery.of(context).size;
}
