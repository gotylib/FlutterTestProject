import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/assets/strings/personal_data_screen_strings.dart';
import 'package:profile/assets/strings/test_keys.dart';
import 'package:profile/features/profile/screens/personal_data_screen/personal_data_screen.dart';
import 'package:profile/features/profile/widgets/next_button.dart';


import '../test_screen_library.dart';

class PersonalDataTestScreen {
  /// Экран.
  final Finder trait = find.byType(PersonalDataScreen);

  /// Поле ввода фамилии.
  final Finder surnameField =
      generalTestScreen.textFormFieldWidget(PersonalDataScreenStrings.surnameHint);
  /// Поле ввода имени
  final Finder name =
       generalTestScreen.textFormFieldWidget(PersonalDataScreenStrings.nameTitle);
  /// Поле ввода отчества
  final Finder secondName = generalTestScreen.textFormFieldWidget(PersonalDataScreenStrings.secondNameHint);
  /// Поле выбора даты рождения.
  final Finder dateOfBirthField = find.byKey(TestKeys.dateOfBirthField);
  /// Кнопка перехода на новую страницу.
  final Finder nextBtn =
  find.descendant(of:find.byType(NextButton) , matching:find.byType(ElevatedButton) );
  /// Кнопка назад
  final Finder backBtn =
      find.descendant(of: find.byType(AppBar), matching: find.byType(BackButton));
}
