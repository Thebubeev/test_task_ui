import 'package:flutter/material.dart';

class FormAgreementWidget extends StatefulWidget {
  const FormAgreementWidget({Key? key}) : super(key: key);

  @override
  State<FormAgreementWidget> createState() => _FormAgreementWidgetState();
}

class _FormAgreementWidgetState extends State<FormAgreementWidget> {
  bool _throwShotAway = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.scale(
          scale: 1.2,
          child: Checkbox(
            side: const BorderSide(
              color: Colors.teal,
              width: 1.5,
            ),
            activeColor: Colors.white,
            checkColor: Colors.teal,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            value: _throwShotAway,
            onChanged: (bool? newValue) {
              setState(() {
                _throwShotAway = newValue!;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                maxLines: 2,
                text: const TextSpan(
                  text: 'Я соглашаюсь на обработку ',
                  style: TextStyle(color: Colors.black, fontSize: 10),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'персональных данных',
                        style: TextStyle(color: Colors.teal, fontSize: 10)),
                  ],
                ),
              ),
              RichText(
                maxLines: 2,
                text: const TextSpan(
                  text: '\nПродолжая авторизацию, вы соглашаетесь с ',
                  style: TextStyle(color: Colors.black, fontSize: 10),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'политикой',
                        style: TextStyle(color: Colors.teal, fontSize: 10)),
                  ],
                ),
              ),
              Row(
                children: [
                  RichText(
                    maxLines: 2,
                    text: const TextSpan(
                      text: 'конфиденциальности',
                      style: TextStyle(color: Colors.teal, fontSize: 10),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' и ',
                            style:
                                TextStyle(color: Colors.black, fontSize: 10)),
                        TextSpan(
                            text: 'условиями сервиса',
                            style: TextStyle(color: Colors.teal, fontSize: 10)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
