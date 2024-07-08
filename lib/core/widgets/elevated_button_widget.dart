import 'package:flutter/material.dart';
import 'package:rent_a_car_app/app/views/view_car/car_list_view.dart';

class ElevatedButtonWidget extends StatelessWidget {
  
  const ElevatedButtonWidget({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 54,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) => const CarListView())
                              , (route) => false);
                        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        child: const Text(
          "Let's Go",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}