import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(
            image: AssetImage("assets/dark_delirium.jpg"),
          ),
          const FirstInfo(),
          const ButtonSection(),
          Container(
            margin: const EdgeInsets.all(30),
            child: const Text(
                "Inspirado en la historia bíblica del sacrificio de Isaac, la historia cuenta como Isaac intenta huir de su propia madre, siendo que ella cree que Dios le ha comandado a sacrificar a su hijo. The Binding of Isaac contiene una atmósfera oscura y humor escatólogico. Isaac tiene que atravesar todo tipo de lugares para huir mientras combate todo tipo de monstruos - desde demonios hasta pilas de popo vivas con caras sonrientes. Todo esto combinado como múltiples referencias a otras series de videojuegos y demás, y alusiones a trabajos previos de Edmund."),
          )
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
      margin: const EdgeInsets.all(30),
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

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            icon: Icons.phone,
            text: "CALL",
          ),
          CustomButton(
            icon: Icons.location_on_rounded,
            text: "ROUTE",
          ),
          CustomButton(
            icon: Icons.share,
            text: "SHARE",
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    super.key,
    required this.icon,
    this.text = "",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
