import 'package:flutter/material.dart';

class MapsWidget extends StatelessWidget {
  const MapsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                image: AssetImage(
                  'assets/images/maps.png',
                ),
                fit: BoxFit.cover),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 5)
            ]),
      ),
    );
  }
}