import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider((ref) => false);

//Listado de colores inmutables
final colorListProvider = StateProvider((ref) => colorList);

//color seleccionado del listado
final selectecColorProvider = StateProvider((ref) => 0);
