import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui/pages/home_page_view/home_page_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
      
 SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //Faz com que os icones do celular (hora, bateria) fiquei em branco
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false,
      title: 'Instagram UI Inspiration',
      home: HomePageView(),
    );
  }
}

