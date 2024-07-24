import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/camerapage.dart';
import 'package:getex/homepage.dart';
import 'package:getex/languages.dart';
import 'package:getex/secondpage.dart';
import 'package:getex/signupandlogin.dart';
import 'package:getex/thirdpage.dart';
import 'package:getex/themechange.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// Define light theme



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    
    return GetMaterialApp(
    
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: appThemeData,
      darkTheme: darkappThemeData,initialRoute: '/',
     
      getPages: [
        GetPage(name: '/', page: ()=> MyHomePage()),
        GetPage(name: '/secondpage', page: ()=> SecondPage()),
        GetPage(name: '/thirdpage', page: ()=> ThirdPage(name: '',)) ,
        GetPage(name: '/camerapage', page: ()=> CameraPage()) ,
        GetPage(name: '/logincontroller', page: ()=> LogInScreen()) ,

      ],
    );

  }
}

