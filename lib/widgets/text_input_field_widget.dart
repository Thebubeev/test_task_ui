import 'package:flutter/material.dart';

class TextInputFieldWidget extends StatelessWidget {
  final String title;
  final String initialValue;
  final String hintText;
  const TextInputFieldWidget({
    required this.title,
    required this.initialValue,
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            title,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          style: const TextStyle(fontSize: 18),
          initialValue: initialValue,
          decoration: InputDecoration(
              hintText: hintText,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        )
      ],
    );
  }
}
