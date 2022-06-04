import 'package:flutter/material.dart';

class TypeOfManWidget extends StatelessWidget {
  const TypeOfManWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              debugPrint('pressed #1');
            },
            child: Container(
              width: 90,
              height: 30,
              child: const Center(
                child: Text(
                  'Физ. лицо',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.deepOrange,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              debugPrint('pressed #2');
            },
            child: const Text(
              'Юр. лицо',
            ),
          ),
        ],
      ),
    );
  }
}
