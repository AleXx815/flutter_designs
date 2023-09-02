import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage("assets/dark_delirium.jpg"),
          ),
          SizedBox(
            height: 5,
          ),
          FirstInfo(),
        ],
      ),
    );
  }
}

class FirstInfo extends StatelessWidget {
  const FirstInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      child: const Row(
        children: [
          Column(
            // el mainAxisAlignment alinea los elementos de manera vertical
            // el crossAxisAlignment alinea los elementos de manera horizontal
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Oeschinen Lake Campground",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Kandersteg, Switzerland",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text("41"),
        ],
      ),
    );
  }
}
