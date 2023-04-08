import 'package:flutter/material.dart';
import 'package:gdsc_dce_app/data/app_navigation.dart';

import 'developer_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GDSC DCE'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            appNavigation.push(
              page: const FlutterDeveloperScreen(),
              context: context,
            );
          },
          child: const Text(
            'Who are we?',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
