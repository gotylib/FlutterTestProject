import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/about_me_screen/about_me_screen.dart';



import '../test_screen_library.dart';

class AboutMeTestScreen{
  /// Экран.
  final Finder trait = find.byType(AboutMeScreen);
  /// Поле о себе
  final Finder aboutME = find.byType(TextFormField);
  /// Кнопка для сохранения
  final Finder saveBtn = find.widgetWithText(ElevatedButton,'Save');
}