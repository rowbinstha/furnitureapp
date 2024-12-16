import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:ui' show PointerDeviceKind;
import 'package:furniture_app/constant/app_theme.dart';
import 'package:furniture_app/src/data/repository/repository.dart';
import 'package:furniture_app/src/presentation/screen/intro_screen.dart';
import 'package:furniture_app/src/business_logic/provider/furniture_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Enable horizontal scroll on flutter web
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      home: MultiProvider(
        providers: [
          Provider<Repository>(create: (context) => Repository()),
          ChangeNotifierProvider<FurnitureProvider>(
            create: (context) => FurnitureProvider(
              repository: context.read<Repository>(),
            ),
          )
        ],
        child: const IntroScreen(),
      ),

      theme: AppTheme.lightTheme,
    );
  }
}
