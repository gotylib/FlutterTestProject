import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final placeResidenceStepDefinition = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я выбираю город$'),
        (context, tester) async {
          await tester.implicitEnterText(placeResidenceTestScreen.placeWrite, 'Voro');
          await tester.pumpUntilVisible(placeResidencePopOutTestScreen.popOutTrait);
          await tester.implicitTap(placeResidencePopOutTestScreen.placeTap);
          await tester.pumpUntilSettled();

    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу далее1$'),
        (context, tester) async {

      await tester.pumpUntilVisible(placeResidenceTestScreen.trait);
      await tester.implicitTap(placeResidenceTestScreen.nextBtn);
      await tester.pumpUntilSettled();
      await tester.pumpUntilVisible(interestsTestScreen.trait);
    },
  ),
];
