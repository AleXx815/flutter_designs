import 'package:designs_app_number_1/widgets/background.dart';
import 'package:flutter/material.dart';

class CompositeDesignScreen extends StatelessWidget {
  const CompositeDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundCompositeDesign(),
        ],
      ),
    );
  }
}
