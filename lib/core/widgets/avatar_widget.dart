import 'package:flutter/material.dart';
import 'package:rent_a_car_app/gen/assets.gen.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: const Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5)
            ]),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                Assets.images.user.path
                ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Jane Cooper',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              '\$4.254',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
