import 'package:flutter/material.dart';

final appNavigation = _AppNavigation();

class _AppNavigation {
  Future<T?> push<T>(
      {required Widget page, required BuildContext context}) async {
    return await Navigator.of(context).push<T>(
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
