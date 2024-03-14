import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final validateAboutMeStepDefinition = [

  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанную информацию о себе$'),
        (context, tester) async {
      await tester.pumpUntilVisible(aboutMeTestScreen.aboutME);
      final aboutMe = tester.widget<TextFormField>(aboutMeTestScreen.aboutME)
          .controller
          ?.text;
      expect(aboutMe, 'Hello');
    },
  ),
];