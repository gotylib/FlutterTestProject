import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/place_residence/place_residence_screen.dart';
import 'package:profile/features/profile/screens/place_residence/widgets/field_with_suggestions_widget/field_with_suggestions_widget.dart';
import 'package:profile/features/profile/widgets/next_button.dart';


class PlaceResidenceTestScreen{
  /// Экран.
  final Finder trait = find.byType(PlaceResidenceScreen);
  /// Поле ввода города.
  final Finder placeWrite =
  find.descendant(of: find.byType(FieldWithSuggestionsWidget), matching: find.byType(TextFormField));
  /// Кнопка перехода на новую страницу.
  final Finder nextBtn =
  find.descendant(of:find.byType(NextButton) , matching:find.byType(ElevatedButton) );
}