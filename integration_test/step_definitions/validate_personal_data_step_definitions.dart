import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/personal_data_screen/widgets/text_form_field_widget.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final validatePersonalDataStepDefinitions = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанные ФИО$'),
        (context, tester) async {
      await tester.pumpUntilVisible(personalDataTestScreen.surnameField);
      final surname = tester.widget<TextFormFieldWidget>(personalDataTestScreen.surnameField)
          .controller
          ?.text;
      expect(surname, 'Fox');
      await tester.pumpUntilVisible(personalDataTestScreen.name);
      final name = tester.widget<TextFormFieldWidget>(personalDataTestScreen.name)
          .controller
          ?.text;
      expect(name, 'Megan');
      await tester.pumpUntilVisible(personalDataTestScreen.secondName);
      final secondName = tester.widget<TextFormFieldWidget>(personalDataTestScreen.secondName)
          .controller
          ?.text;
      expect(secondName, 'Denise');
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанную дату рождения$'),
        (context, tester) async {
      await tester.pumpUntilVisible(personalDataTestScreen.dateOfBirthField);
      final calendar =
      tester.widget<TextFormField>(personalDataTestScreen.dateOfBirthField)
          .controller
          ?.text;
      expect(calendar, '1980-04-07');
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу далее3$'),
        (context, tester) async {
      await tester.pumpUntilVisible(personalDataTestScreen.trait);
      await tester.implicitTap(personalDataTestScreen.nextBtn);
      await tester.pumpUntilSettled();
      await tester.pumpUntilVisible(placeResidenceTestScreen.trait);
    },
  ),
];
