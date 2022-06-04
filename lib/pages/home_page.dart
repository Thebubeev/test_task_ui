import 'package:flutter/material.dart';
import 'package:test_task_ui/widgets/button_actions_widget.dart';
import 'package:test_task_ui/widgets/form_agreement_widget.dart';
import 'package:test_task_ui/widgets/text_input_field_widget.dart';
import 'package:test_task_ui/widgets/type_of_man_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: ListView(children: const [
            SizedBox(
              height: 45,
            ),
            Text(
              'Профиль',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            TypeOfManWidget(),
            TextInputFieldWidget(
                title: 'ФИО',
                initialValue: 'Литвинов Дмитрий Васильевич',
                hintText: 'Введите ваше ФИО'),
            TextInputFieldWidget(
                title: 'Город',
                initialValue: 'Краснодар',
                hintText: 'Введите ваш город'),
            TextInputFieldWidget(
                title: 'E-mail',
                initialValue: 'kakoytomail@bk.com',
                hintText: 'Введите ваш e-mail'),
            SizedBox(
              height: 50,
            ),
            FormAgreementWidget(),
            SizedBox(
              height: 35,
            ),
            ButtonActionWidget(),
          ]),
        ),
      ),
    );
  }
}
