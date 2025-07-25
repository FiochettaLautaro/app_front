import 'package:flutter/material.dart';

class SuperFixAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SuperFixAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    final Color rojoPastel = const Color(0xFFFF6363);
    final Color blanco = const Color(0xFFFFFFFF);
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Stack(
        children: [
          Container(
            height: kToolbarHeight + MediaQuery.of(context).padding.top,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [rojoPastel, blanco],
                stops: [0.0, 0.5],
              ),
            ),
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: true,
            centerTitle: true,
            title: Text(
              "SuperFix",
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF5963),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); //Define la altura de la barra personalizada para que Flutter la dibuje correctamente en la parte superior de la pantalla.
}



//kToolbarHeight es la altura estándar de un AppBar (56.0 píxeles)