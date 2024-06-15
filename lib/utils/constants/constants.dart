import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  //=====================IMAGES==============================
  static const String qiblaDirIcon='assets/images/icons/qibla.png';
  static const String duaIcon='assets/images/icons/dua2.jpg';
  static const String tasbih='assets/images/icons/tasbih.jpg';
  static const String tasbih2='assets/images/icons/tasbih.jpeg';
  static const String quiz='assets/images/icons/quiz.jpg';
  static const String calendar='assets/images/icons/calendar.jpeg';
  static const String mapIcon='assets/images/icons/masjidnearme.jpeg';
  static const String compass='assets/images/compass/compass2.png';
  static const String compassNeedle='assets/images/compass/needle.png';
  //====================PADDING==========================
  static const EdgeInsets gradContainPadd=EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 10);
  static const EdgeInsets mainContainPadd= EdgeInsets.all(30);
  static const EdgeInsets mainContainSubPadd=  EdgeInsets.only(left: 30,right: 30, top: 25);
  static const EdgeInsets dashHeadPadd= EdgeInsets.symmetric(horizontal: 30, vertical: 20);
  static const EdgeInsets duaBoxPadd= EdgeInsets.symmetric(horizontal: 20,vertical: 10);

  //=====================HEIGHT========================
  static const SizedBox height5 = SizedBox(height: 5);
  static const SizedBox height10 = SizedBox(height: 10);
  static const SizedBox height20 = SizedBox(height: 20);
  static const SizedBox height15 = SizedBox(height: 15);
  static const SizedBox height8 = SizedBox(height: 8);
  //=====================WIDTH========================
  static const SizedBox width5 = SizedBox(width: 5);
  static const SizedBox width10 = SizedBox(width: 10);
  static const SizedBox width15 = SizedBox(width: 15);
  static const SizedBox width8 = SizedBox(width: 8);

  //====================COLORS============================
  static const Color greenLight = Color(0xff7A9D8B);
  static const Color greenDark = Color(0xff121F19);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color lightGreen= Color(0xff243F33);

  //====================GRADIENT-Color======================
  static const Color gradGreenLight = Color(0xff36A434);
  static const Color gradGreenDark = Color(0xff143E14);
  static const Color gradBlueLight= Color(0xff399FD9);
  static const Color gradBlueDark= Color(0xff1E5473);
  static const Color gradRedLight= Color(0xffFF3A3A);
  static const Color gradRedDark= Color(0xff992323);
  static const Color gradVioletLight= Color(0xff623AFF);
  static const Color gradVioletDark= Color(0xff3B2399);

  //============================Icons=======================
  static  Icon arrowRight=Icon(Icons.arrow_right_alt_rounded,color: white,size: 30.sp,);
}