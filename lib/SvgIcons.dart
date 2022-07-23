import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tutumapp/dddd.dart';


Widget pillIcon(index , String icon){

  return SvgPicture.asset(

      icon,
      color: index == selected ? primaryColor : Colors.black,
      width:30,
      height:30,

  );}

Widget pillIcon2(Color color){
  return SvgPicture.asset(
    'images/pill-1-svgrepo-com.svg',
    color: color,
    width:30,
    height:30,

  );}

Widget pillIcon3(Color color){
  return SvgPicture.asset(
    'images/pill-svgrepo-com.svg',
    color: color,
    width:30,
    height:30,

  );}