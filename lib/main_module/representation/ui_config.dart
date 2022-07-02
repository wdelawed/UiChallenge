import 'dart:ui';

import 'package:flutter/cupertino.dart';

//Typography
const k9semibold =
    TextStyle(fontSize: 9, fontWeight: FontWeight.w600, fontFamily: "Cairo");

const k10regular =
    TextStyle(fontSize: 10, fontWeight: FontWeight.w400, fontFamily: "Cairo");
const k10semibold =
    TextStyle(fontSize: 10, fontWeight: FontWeight.w600, fontFamily: "Cairo");

const k11regular =
    TextStyle(fontSize: 11, fontWeight: FontWeight.w400, fontFamily: "Cairo");

const k12regular =
    TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontFamily: "Cairo");
const k12semibold =
    TextStyle(fontSize: 12, fontWeight: FontWeight.w600, fontFamily: "Cairo");
const k12bold =
    TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: "Cairo");

const k14regular =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "Cairo");
const k14semibold =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: "Cairo");
const k14bold =
    TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: "Cairo");

const k16semibold =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Cairo");

//buttons
const kprimaryBtnBackground = Color(0xffDD0539);
const kprimaryBtnText = Color(0xffffffff);

const kSecondaryBtnBackground = Color(0xff25272A);
const kSecondaryBtnText = Color(0xffffffff);

//text color
const kPrimaryTextColor = Color(0xff25272A);
const kSecondaryTextColor = Color(0xff6A6A6A);
const kRedTextColor = Color(0xffDD0539);

//gradients
const kSelectPlangradient = LinearGradient(
  begin: Alignment(-.5, -1.5),
  end: Alignment(1.1, 1.2),
  colors: [
    Color(0xffDD0539),
    Color(0xffFF83A1),
  ],
);

final kStickergradient = LinearGradient(
  begin: const Alignment(-.5, -1.5),
  end: const Alignment(1.1, 1.2),
  colors: [
    const Color(0xffF5B3C3),
    const Color(0xffDD0539).withOpacity(.86),
  ],
);
