import 'package:designs_app_number_1/widgets/background.dart';
import 'package:designs_app_number_1/widgets/custom_bottom_navigation_bar.dart';
import 'package:designs_app_number_1/widgets/title_page.dart';
import 'package:flutter/material.dart';

class CompositeDesignScreen extends StatelessWidget {
  const CompositeDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundCompositeDesign(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TitlePage(),
        ],
      ),
    );
  }
}
