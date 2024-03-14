import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';


final mainStepDefinitions = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я проверяю корректность текста кнопки на главном экране$'),
        (context, tester) async {
      await tester.pumpUntilVisible(mainTestScreen.trait);
      await tester.pumpUntilVisible(mainTestScreen.nameEditBtn);

    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу к редактированию профиля$'),
        (context, tester) async {

      await tester.implicitTap(mainTestScreen.editProfileBtn);
      await tester.pumpUntilVisible(personalDataTestScreen.trait);
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я проверяю кнопку назад$'),
        (context, tester) async {
      await tester.pumpUntilVisible(personalDataTestScreen.trait);
      await tester.pumpUntilVisible(personalDataTestScreen.backBtn);
      await tester.implicitTap(personalDataTestScreen.backBtn);
      await tester.pumpUntilSettled();
      await tester.pumpUntilVisible(mainTestScreen.trait);
      await tester.pumpUntilVisible(mainTestScreen.nameEditBtn);
      await tester.implicitTap(mainTestScreen.editProfileBtn);
      await tester.pumpUntilSettled();
    },
  ),
];