import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:meal_delivery/view/login/login_screen.dart';
import 'package:meal_delivery/view/on_boarding/on_boarding_screen.dart';

import 'view/on_boarding/splas_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //========== Desactiver la rotation de l'ecant=========================//
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitUp
    //========== Desactiver la rotation de l'ecant=========================//
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (BuildContext context,child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: OnboardingScreen(),
        debugShowCheckedModeBanner: false,
      ),
      designSize:  Size(width, height),
    );
  }
}