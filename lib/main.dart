import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lobby/screens/ForgotPassword.dart';
import 'package:lobby/screens/Home.dart';
import 'package:lobby/screens/Interests.dart';
import 'package:lobby/screens/ResetPassword.dart';
import 'package:lobby/screens/Verify.dart';
import 'package:lobby/screens/login.dart';
import 'package:lobby/screens/signup.dart';
import 'package:lobby/screens/videoCall.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          initialRoute: "/login",
          routes: {
            "/": (context) => const Home(),
            "/login" : (context) => const Login(),
            "/signup" : (context) => const SignUp(),
            "/forgotpassword" : (context) => const ForgotPassword(),
            "/verify" : (context) => const Verify(),
            "/resetpassword": (context) => const  ResetPassword(),
            "/interests" : (context) => const Interests(),
            "/videocall" : (context) => const VideoCall()
          },
        );
      },
    );
  }
}

