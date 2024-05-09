import 'package:flutter/material.dart';
import 'package:sheet_use/porduct/colors/project_colors.dart';
import 'package:sheet_use/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            //backgroundColor: ProjectColors.deepPurple,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(_SchemeSize().appBarRadius))),
            titleTextStyle: Theme.of(context).textTheme.titleLarge?.copyWith(color: ProjectColors.whiteColor)),
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}

class _SchemeSize {
  final double appBarRadius = 20.0;
}
