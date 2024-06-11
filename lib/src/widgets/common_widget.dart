import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myport2/helpers/responsive.dart';

class CommonWidget {
  //
  static EdgeInsets padding = EdgeInsets.all(3 * AppUI.dw);
  static EdgeInsets margin = EdgeInsets.all(4 * AppUI.dw);

  static BoxDecoration boxDecoration = BoxDecoration(
    color: const Color(0xFFD3ECFF),
    border: Border.all(color: const Color(0xFF3BA1EF)),
    borderRadius: BorderRadius.circular(8),
  );

  static Widget sectionTitle(String txt) {
    return Padding(
      padding: EdgeInsets.only(left: 3 * AppUI.dw),
      child: Text(
        txt,
        style: TextStyle(
          fontSize: 14 * AppUI.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
