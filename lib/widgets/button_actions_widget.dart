import 'package:flutter/material.dart';

class ButtonActionWidget extends StatelessWidget {
  const ButtonActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 25, right: 25, top: 15, bottom: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            padding: const EdgeInsets.symmetric(
                horizontal: 45, vertical: 20),
          ),
          onPressed: () {},
          child: const Text(
            'Продолжить',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
