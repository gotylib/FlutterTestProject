import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';


final validateInterestsStepDefinition = [

  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанные интересы$'),
        (context, tester) async {
          await tester.pumpUntilVisible(interestsTestScreen.checkBoxPhoto);
          final isCheckedPhoto = tester.widget<Checkbox>(interestsTestScreen.checkBoxFlowers).value;
          expect(isCheckedPhoto, true);
          await tester.pumpUntilVisible(interestsTestScreen.checkBoxFlowers);
          final isCheckedFlowers = tester.widget<Checkbox>(interestsTestScreen.checkBoxFlowers).value;
          expect(isCheckedFlowers, true);
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу далее5$'),
        (context, tester) async {
      await tester.pumpUntilVisible(interestsTestScreen.trait);
      await tester.implicitTap(interestsTestScreen.nextBtn);
      await tester.pumpUntilSettled();
      await tester.pumpUntilVisible(aboutMeTestScreen.trait);
    },
  ),

];