import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/assets/strings/personal_data_screen_strings.dart';
import 'package:profile/assets/strings/test_keys.dart';
import 'package:profile/features/profile/screens/interests_screen/interests_screen.dart';
import 'package:profile/features/profile/screens/personal_data_screen/personal_data_screen.dart';
import 'package:profile/features/profile/widgets/next_button.dart';

class InterestsTestScreen{
  final Finder trait = find.byType(InterestsScreen);
  /// ЧекБокс для цветов
  final Finder interestFlowers = find.widgetWithText(Row, 'Flowers');
  /// ЧекБокс для книг
  final Finder interestPhoto = find.widgetWithText(Row, 'Photo');
  /// Кнопка перехода на новую страницу.
  final Finder nextBtn =
  find.descendant(of:find.byType(NextButton) , matching:find.byType(ElevatedButton) );
  /// Поле Checkbox для Flowers
  final  Finder checkBoxFlowers =
  find.descendant(of: find.widgetWithText(Row , 'Flowers'),matching: find.byType(Checkbox));
  /// Поле Checkbox для Photo
  final  Finder checkBoxPhoto =
  find.descendant(of: find.widgetWithText(Row , 'Photo'),matching: find.byType(Checkbox));

}


