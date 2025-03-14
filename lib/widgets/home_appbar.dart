import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'What are you\ncooking today?',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            height: 1, // kc cách dòng
          ),
        ),
        const Spacer(), // ~ SizedBox()
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              backgroundColor: Colors.white,
              fixedSize: const Size(55, 55)),
          icon: const Icon(Icons.notifications),
        )
      ],
    );
  }
}
