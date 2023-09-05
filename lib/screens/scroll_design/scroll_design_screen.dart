import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // physics: BouncingScrollPhysics(), FÍSICAS DE IOS

        // CAMBIA LA DIRECCIÓN A LA CUAL HACER EL SCROLL
        scrollDirection: Axis.vertical,
        children: const [
          FirstPage(),
          SecondPage(),
        ],
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [Background(), MainContent()],
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
              Icons.swipe_down,
              color: Colors.white,
              size: 120,
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
      color: const Color(0xff46b9d5),
      // SE LE DICE AL CONTAINER QUE TOME TOD EL ESPACIO POSIBLE
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage("assets/scroll-1.png"),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff46b9d5),
      child: Center(
        child: ElevatedButton(
          onPressed: () => context.go("/composite-screen"),
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            // shape: const StadiumBorder(),
          ),
          child: const Text(
            "Next Page",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
