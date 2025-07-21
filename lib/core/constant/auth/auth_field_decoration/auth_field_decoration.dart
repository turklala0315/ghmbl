import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghmbl/core/constant/colors/colors.dart';
import 'package:ghmbl/core/constant/text_style/text_style.dart';

final authFieldDecoration = InputDecoration(
  hintText: 'user@email.com',
  prefixIcon: Icon(Icons.email_outlined, color: grayColor),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.r),
    borderSide: BorderSide.none,
  ),
  filled: true,
  fillColor: Colors.grey.shade100,
  contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
);
