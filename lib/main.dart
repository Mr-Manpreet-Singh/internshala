
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internshala/app_wrapper.dart';
import 'package:internshala/theme/theme.dart';

import 'features/filters/ui/filters_screen.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internships App',
      theme: appTheme,
      home: const AppWrapper(),
      // home: const FiltersScreen(),
    );
  }
}

/*
0. fetch city from the future provider
1-> Create screen City
2-> Create Screen Profile
3-> Store their state in river pod named filtes -> Create model filters
4-> filter jobs based on that
5->
 */