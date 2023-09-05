import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.table_rows,
              text: "General",
            ),
            _SingleCard(
              color: Colors.purple,
              icon: Icons.bus_alert,
              text: "Transport",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.pink,
              icon: Icons.shopping_bag,
              text: "Shopping",
            ),
            _SingleCard(
              color: Colors.orange,
              icon: Icons.document_scanner,
              text: "Bills",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blueAccent,
              icon: Icons.movie_edit,
              text: "Entertainment",
            ),
            _SingleCard(
              color: Colors.green,
              icon: Icons.apple,
              text: "Grocery",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.brown,
              icon: Icons.check_box_outline_blank,
              text: "Checked",
            ),
            _SingleCard(
              color: Colors.blueGrey,
              icon: Icons.sunny,
              text: "Vacations",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.limeAccent,
              icon: Icons.car_crash,
              text: "Danger",
            ),
            _SingleCard(
              color: Colors.tealAccent,
              icon: Icons.waves,
              text: "Sea",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.redAccent,
              icon: Icons.video_collection,
              text: "Videos",
            ),
            _SingleCard(
              color: Colors.greenAccent,
              icon: Icons.woman,
              text: "Woman",
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({
    required this.icon,
    required this.color,
    required this.text,
  });

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(
                    icon,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: color,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
