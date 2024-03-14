import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/personal_data_screen/widgets/text_form_field_widget.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final validatePlaceResidenceStepDefinition = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанный город$'),
        (context, tester) async {
      await tester.pumpUntilVisible(placeResidenceTestScreen.placeWrite);
      final city = tester.widget<TextFormField>(placeResidenceTestScreen.placeWrite)
          .controller
          ?.text;
      expect(city, 'Voronezh');

    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу далее4$'),
        (context, tester) async {

      await tester.pumpUntilVisible(placeResidenceTestScreen.trait);
      await tester.implicitTap(placeResidenceTestScreen.nextBtn);
      await tester.pumpUntilSettled();
      await tester.pumpUntilVisible(interestsTestScreen.trait);
    },
  ),
];