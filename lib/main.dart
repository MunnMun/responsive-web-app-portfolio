import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:final_portfolio/responsive/desktop_scaffold.dart';
import 'package:final_portfolio/responsive/mobile__scaffold.dart';
import 'package:final_portfolio/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Future<FirebaseApp> _intialization = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _intialization,
        builder: (context,snapshot){
          if(snapshot.hasError){
            print("error");
          }
          if(snapshot.connectionState == ConnectionState.done){
            return AnimatedSplashScreen(
              splash: Lottie.network('https://assets1.lottiefiles.com/packages/lf20_zC0D1zvuit.json'),
              backgroundColor: Colors.black,
              duration: 2000,
              splashIconSize: 250,
              splashTransition: SplashTransition.fadeTransition,
              nextScreen: ResponsiveLayout(mobileScaffold: mobileScaffold(), desktopScaffold: desktopScaffold()),
              pageTransitionType: PageTransitionType.leftToRightWithFade,
            );
          }
          return CircularProgressIndicator();
        },
      )
    );
  }
}

