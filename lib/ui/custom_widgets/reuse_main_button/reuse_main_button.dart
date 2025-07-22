import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghmbl/core/constant/text_style/text_style.dart';

class ReuseMainButton extends StatelessWidget {
  final String text;
  final Color color;
  VoidCallback? callback;
  Icon? icon;
  double? height;
  double? width;
  ReuseMainButton({
    super.key,
    required this.text,
    required this.color,
    this.callback,
    this.icon,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          callback!();
        },
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(child: Text(text, style: style16)),
        ),
      ),
    );
  }
}
