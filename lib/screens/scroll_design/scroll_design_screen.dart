import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [Background(), MainContent()],
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 38,
      fontWeight: FontWeight.bold,
    );
    return const SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "11°",
              style: textStyle,
            ),
            Text(
              "Miércoles",
              style: textStyle,
            ),
            Spacer(),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.white,
              size: 150,
            ),
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff46b9d5),
      // SE LE DICE AL CONTAINER QUE TOME TOD EL ESPACIO POSIBLE
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage("assets/scroll-1.png"),
      ),
    );
  }
}
