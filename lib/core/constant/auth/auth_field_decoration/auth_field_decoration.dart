import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final authFieldDecoration = InputDecoration(
  hintText: 'user@email.com',

  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.r),
    borderSide: BorderSide.none,
  ),
  filled: true,
  fillColor: Colors.grey.shade100,
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
);
