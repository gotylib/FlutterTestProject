import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/place_residence/place_residence_screen.dart';
import 'package:profile/features/profile/screens/place_residence/widgets/field_with_suggestions_widget/field_with_suggestions_widget.dart';
import 'package:profile/features/profile/widgets/next_button.dart';

class PlaceResidencePopOutTestScreen{
  /// PopOut окно.
  final Finder popOutTrait = find.byType(ListView);
  /// Поле для выбора города.
  final Finder placeTap = find.widgetWithText(ListTile, 'Voronezh');
}