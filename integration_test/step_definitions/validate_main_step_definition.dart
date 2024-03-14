import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final validateMainStepDefinition = [

  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу к редактированию профиля2$'),
        (context, tester) async {
      await tester.pumpUntilVisible(mainTestScreen.trait);
      await tester.implicitTap(mainTestScreen.editProfileBtn);
      await tester.pumpUntilSettled();
      await tester.pumpUntilVisible(personalDataTestScreen.trait);
    },
  ),
];
