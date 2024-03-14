import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';


final interestsStepDefinition = [

  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю интересы$'),
        (context, tester) async {
      await tester.implicitTap(interestsTestScreen.interestFlowers);
      await tester.pumpUntilSettled();
      await tester.pumpUntilVisible(interestsTestScreen.interestPhoto);
      await tester.implicitTap(interestsTestScreen.interestPhoto);
      await tester.pumpUntilSettled();

    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу далее2$'),
        (context, tester) async {
          await tester.pumpUntilVisible(interestsTestScreen.trait);
          await tester.implicitTap(interestsTestScreen.nextBtn);
          await tester.pumpUntilSettled();
          await tester.pumpUntilVisible(aboutMeTestScreen.trait);
    },
  ),

];
