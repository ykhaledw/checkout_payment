import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildCustomAppBar({String? text}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: Center(child: SvgPicture.asset('assets/images/Arrow.svg')),
    title: Text(
      text ?? '',
      style: const TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        height: 0,
      ),
    ),
  );
}
