import 'package:flutter/material.dart';

import 'core/constants/colors.dart';
import 'features/courses/ui/courses_screen.dart';
import 'features/home/ui/home_screen.dart';
import 'features/internships/ui/internship_screen.dart';
import 'features/jobs/ui/jobs_screen.dart';

class AppWrapper extends StatefulWidget {
  const AppWrapper({super.key});

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const InternshipsScreen(),
    const JobScreen(),
    const CoursesScreen(),
  ];
  final List<String> _appBarTitle = ["Internshala", "Internships", "Internships", "Courses"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(_appBarTitle[_currentIndex]),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Spacer(),
                    IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close))
                  ],
                ),
                const Text("Internshala LOGO"),
                TextButton.icon(
                  onPressed: () {},
                  label: const Text("Register"),
                  icon: const Icon(Icons.person_add_alt),
                  style: TextButton.styleFrom(
                      foregroundColor: myBlackColor,
                      minimumSize: const Size(double.infinity, 50),
                      textStyle: const TextStyle().copyWith(fontSize: 18),
                      alignment: Alignment.centerLeft),
                )
              ],
            ),
          ),
        ),
        //
        body: _pages[_currentIndex],

        //
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Internships',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business_center),
              label: 'Job',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Courses',
            ),
          ],
        ),
      ),
    );
  }
}
