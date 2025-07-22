import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghmbl/core/constant/auth/auth_field_decoration/auth_field_decoration.dart';
import 'package:ghmbl/core/constant/auth/login/login_screen.dart';
import 'package:ghmbl/core/constant/colors/colors.dart';
import 'package:ghmbl/core/constant/string/string.dart';
import 'package:ghmbl/core/constant/text_style/text_style.dart';
import 'package:ghmbl/ui/custom_widgets/reuse_main_button/reuse_main_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController useremail = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordreenter = TextEditingController();
  TextEditingController invitationcode = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isreenterpassworVisibile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            // end: Alignment.topRight,
            colors: [
              // Light Cyan
              Color(0xFFBBDEFB), // Light Blue
              whiteColor,

              // Color(0xFFE1BEE7), // Light Purple
            ],
          ),
        ),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 50,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('$staticAssets/ghmbl_light.png', scale: 4),
                    Text('Register', style: style32),
                  ],
                ),
              ),

              //
              SizedBox(height: 40.h),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: Container(
                    height: 844.h,
                    width: 375.w,

                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: Center(
                        child: Column(
                          children: [
                            //
                            SizedBox(height: 24.h),
                            //
                            _buildTextFormField(
                              firstname,
                              'First Name',
                              TextInputType.text,
                            ),
                            //
                            SizedBox(height: 16.h),
                            //
                            _buildTextFormField(
                              lastname,
                              'Last Name',
                              TextInputType.text,
                            ),
                            //
                            SizedBox(height: 16.h),
                            //
                            _buildTextFormField(
                              useremail,
                              'user@email.com',
                              TextInputType.emailAddress,
                            ),
                            //
                            SizedBox(height: 16.h),
                            //
                            _buildTextFormField(
                              phonenumber,
                              'Phone Number',
                              TextInputType.phone,
                            ),
                            //
                            SizedBox(height: 24.h),
                            //
                            TextFormField(
                              obscureText: !_isPasswordVisible,
                              keyboardType: TextInputType.text,
                              controller: password,
                              decoration: authFieldDecoration.copyWith(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  },
                                  icon: Icon(
                                    _isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: grayColor,
                                  ),
                                ),
                                hintText: 'Password',
                                hintStyle: style12.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                fillColor: whiteColor,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: borderColor,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                            ),
                            //
                            SizedBox(height: 16.h),
                            //
                            TextFormField(
                              obscureText: _isreenterpassworVisibile,
                              keyboardType: TextInputType.text,
                              controller: passwordreenter,
                              decoration: authFieldDecoration.copyWith(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isreenterpassworVisibile =
                                          !_isreenterpassworVisibile;
                                    });
                                  },
                                  icon: Icon(
                                    _isreenterpassworVisibile
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: grayColor,
                                  ),
                                ),
                                hintText: 'Password Re-enter',
                                hintStyle: style12.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                fillColor: whiteColor,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: borderColor,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                            ),

                            //
                            SizedBox(height: 16.h),
                            //
                            _buildTextFormField(
                              invitationcode,
                              'Invitation Code',
                              TextInputType.text,
                            ),
                            //
                            SizedBox(height: 35.h),
                            //
                            ReuseMainButton(
                              text: 'Register',
                              color: forgotpasswordColor,
                              height: 48.h,
                              width: 326.w,
                              callback: () {},
                            ),

                            //
                            SizedBox(height: 26.h),
                            //
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have an account?',
                                  style: style12,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Log In',
                                    style: style12.copyWith(
                                      color: mainbluekColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
Widget _buildTextFormField(controller, String hintText, keyboardtype) {
  return TextFormField(
    keyboardType: keyboardtype,
    controller: controller,
    decoration: authFieldDecoration.copyWith(
      hintText: hintText,
      hintStyle: style12.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
      fillColor: whiteColor,
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: borderColor, width: 0.5),
      ),
    ),
  );
}
