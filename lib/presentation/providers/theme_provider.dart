import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider((ref) => false);

//Listado de colores inmutables
final colorListProvider = StateProvider((ref) => colorList);

//color seleccionado del listado
final selectecColorProvider = StateProvider((ref) => 0);

//un provider custom de tipo AppTheme
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

//TheemeNotifier o ThemeControoler
class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = EStado = new AppTheme
  // ThemeNotifier(super.state);
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    // state.selectedColor = colorIndex;
    state = state.copyWith(selectedColor: colorIndex);
  }
}
