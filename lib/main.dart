import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:link/screens/mobile/mobile_screenholder.dart';
import 'package:link/screens/web/web_screenholder.dart';
import 'package:link/styles/link_colors.dart';
import 'responsive/responsive_layout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CachedNetworkImage.logLevel = CacheManagerLogLevel.debug;
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp() : super();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Link',
      theme: ThemeData.dark().copyWith(
          useMaterial3: true,
          scaffoldBackgroundColor: charcoal,
          textTheme: TextTheme(
              headlineLarge: GoogleFonts.abel(fontSize: 24, color: platinum),
              headlineMedium: GoogleFonts.abel(fontSize: 22, color: platinum),
              headlineSmall: GoogleFonts.abel(fontSize: 20, color: platinum)),
          appBarTheme: const AppBarTheme(
              color: Colors.transparent,
              elevation: 0,
              foregroundColor: platinum)),
      home: const ResponsiveLayout(
          mobileScreen: MobileScreenHolder(), webScreen: WebScreenHolder()),
    );
  }
}
