import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final aboutMeStepDefinition = [

  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю информацию о себе и сохраняю данные$'),
        (context, tester) async {
          await tester.implicitEnterText(aboutMeTestScreen.aboutME, 'Hello');
          await tester.pumpUntilVisible(aboutMeTestScreen.trait);
          await tester.implicitTap(aboutMeTestScreen.saveBtn);
          await tester.pumpUntilSettled();
    },
  ),
];

