import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // OCULTA EL TEXTO DEL ICONO SELECCIONADO EN LA BARRA DE NAVEGACIÓN
      showSelectedLabels: false,
      // OCULTA EL TEXTO DE LOS ICONOS NO SELECCIONADOS EN LA BARRA DE NAVEGACIÓN
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 1,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Person",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2),
          label: "Person-2",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_3),
          label: "Person-3",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_4),
          label: "Person-4",
        ),
      ],
    );
  }
}
