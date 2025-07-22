import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghmbl/core/constant/auth/auth_field_decoration/auth_field_decoration.dart';
import 'package:ghmbl/core/constant/auth/register/register_screen.dart';
import 'package:ghmbl/core/constant/colors/colors.dart';
import 'package:ghmbl/core/constant/string/string.dart';
import 'package:ghmbl/core/constant/text_style/text_style.dart';
import 'package:ghmbl/ui/custom_widgets/reuse_main_button/reuse_main_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            // end: Alignment.bottomRight,
            colors: [
              Color(0xFFE0F7FA), // Light Cyan
              Color(0xFFBBDEFB), // Light Blue
              Color(0xFFE1BEE7), // Light Purple
              whiteColor,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('$staticAssets/ghmbl.png', scale: 4),
                //
                SizedBox(height: 60.h),
                //

                // Login Card
                Card(
                  color: whiteColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Sign in with Google Button
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 48.h,
                            width: 342.w,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: borderColor),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  '$staticAssets/google.png',
                                  scale: 4.5,
                                ),
                                //
                                SizedBox(width: 5.w),
                                //
                                Text('Sign in with Google', style: style14),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 24.h),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Divider(color: grayColor, thickness: 3),
                            //
                            SizedBox(width: 3.w),
                            //
                            Text(
                              'Or',
                              style: style12.copyWith(color: grayColor),
                            ),
                            //
                            SizedBox(width: 3.w),
                            //
                            Divider(color: grayColor, thickness: 3),
                          ],
                        ),
                        SizedBox(height: 24.h),
                        // Email Input
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailcontroller,
                          decoration: authFieldDecoration.copyWith(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                          ),
                        ),
                        //
                        SizedBox(height: 16),

                        // Password Input
                        TextFormField(
                          controller: passwordcontroller,
                          obscureText: !_isPasswordVisible,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            hintText: '*********',

                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                          ),
                        ),

                        //
                        SizedBox(height: 16.5.h),

                        // Remember me & Forgot Password
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: _rememberMe,
                                  onChanged: (bool? newValue) {
                                    setState(() {
                                      _rememberMe = newValue!;
                                    });
                                  },
                                  activeColor: Colors.blue,
                                ),
                                Text('Remember me', style: style12),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Forgot Password ?',
                                style: style12.copyWith(
                                  color: forgotpasswordColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h),

                        // Log In Button
                        ReuseMainButton(
                          height: 48.h,
                          width: 329.w,
                          text: 'Login',
                          color: mainbluekColor,
                          callback: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                //
                SizedBox(height: 25.h),
                //

                // Have an invite? Register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have an invite?', style: style12),

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Register',
                        style: style12.copyWith(color: forgotpasswordColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
