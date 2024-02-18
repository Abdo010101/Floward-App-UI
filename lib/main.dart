import 'package:floward/modules/floward_app/splash_screen.dart';
import 'package:floward/shared/styles/app_strings.dart';
import 'package:floward/shared/styles/theme.dart';
import 'package:flutter/material.dart';



import 'layout/home_layout/floward_app.dart';

void main()
{

  runApp(const MyApp());
}



class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: AppStrings.AppName,
      debugShowCheckedModeBanner: false,
      theme: appThemeLight(),
      home:  SplashScreen(),
    );
  }
}
