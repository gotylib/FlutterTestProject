import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final personalDataStepDefinitions = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я проверяю валидацию полей PersonalDate$'),
        (context, tester) async {
          await tester.implicitTap(personalDataTestScreen.nextBtn);
          await tester.pumpUntilVisible(personalDataTestScreen.trait);
          await tester.pumpUntilSettled();
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю фамилию$'),
    (context, tester) async {
      await tester.implicitEnterText(
          personalDataTestScreen.surnameField, 'Fox');
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю имя$'),
        (context, tester) async {
      await tester.implicitEnterText(
          personalDataTestScreen.name, 'Megan');
    },
  ), 
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю отчество$'),
        (context, tester) async {
      await tester.implicitEnterText(
          personalDataTestScreen.secondName, 'Denise');
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю дату рождения$'),
    (context, tester) async {
      final calendar =
          tester.widget<TextFormField>(personalDataTestScreen.dateOfBirthField);
      calendar.controller?.text = '1980-04-07';
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу далее$'),
        (context, tester) async {
          await tester.hideKeyboard();
          await tester.pumpUntilSettled();
          await tester.pumpUntilVisible(personalDataTestScreen.trait);
          await tester.implicitTap(personalDataTestScreen.nextBtn);
          await tester.pumpUntilVisible(placeResidenceTestScreen.trait);
    },
  ),

];

