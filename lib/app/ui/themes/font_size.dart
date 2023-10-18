import 'package:flutter/material.dart';

import 'colors.dart';

headText({size, family, color, fontWeight}) {
  return TextStyle(
      fontSize: size ?? 24,
      fontFamily: family ?? 'PoppinsB',
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.normal);
}
lightText({size, family, color, fontWeight}) {
  return TextStyle(
      fontFamily: family ?? 'PoppinsL',
      fontSize: size ?? 16.0,
      color: color ?? Colors.white,
      fontWeight: fontWeight ?? FontWeight.normal);
}

regularText({size, family, color, fontWeight}) {
  return TextStyle(
      fontFamily: family ?? 'PoppinsR',
      fontSize: size ?? 16.0,
      color: color ?? Colors.white,
      fontWeight: fontWeight ?? FontWeight.normal);
}

boldText({size, family, color, fontWeight}) {
  return TextStyle(
      fontSize: size ?? 16.0,
      fontFamily: family ?? 'PoppinsB',
      color: color ?? Colors.white,

      fontWeight: fontWeight ?? FontWeight.normal);
}
semiBoldText({size, family, color, fontWeight}) {
  return TextStyle(
      fontSize: size ?? 16.0,
      fontFamily: family ?? 'PoppinsSB',
      color: color ?? Colors.white,
      fontWeight: fontWeight ?? FontWeight.normal);
}

mediumText({size, family, color, fontWeight}) {
  return TextStyle(
      fontSize: size ?? 16.0,
      fontFamily: family ?? 'PoppinsM',
      color: color ?? Colors.white,
      fontWeight: fontWeight ?? FontWeight.normal);
}