import 'package:flutter/material.dart';

class FlutterDeveloperScreen extends StatefulWidget {
  const FlutterDeveloperScreen({Key? key}) : super(key: key);

  @override
  State<FlutterDeveloperScreen> createState() => _FlutterDeveloperScreenState();
}

class _FlutterDeveloperScreenState extends State<FlutterDeveloperScreen> {
  bool _isAnimationComplete = false;

  void _onAnimationComplete() {
    setState(() {
      _isAnimationComplete = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: height * 0.2,
          ),
          TweenAnimationBuilder(
            onEnd: _onAnimationComplete,
            tween: Tween<double>(begin: 0, end: 1),
            duration: const Duration(seconds: 3),
            builder: (context, value, child) {
              return Transform.rotate(
                angle: value * 2 * 3.14,
                child: const FlutterLogo(
                  size: 200,
                ),
              );
            },
          ),
          const SizedBox(height: 60),
          if (_isAnimationComplete)
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}
