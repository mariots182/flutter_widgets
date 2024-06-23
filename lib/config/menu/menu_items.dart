import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItem = <MenuItem>[
  MenuItem(
    title: "Counter",
    subtitle: "Scroller infinito y pull refresh",
    link: "/counter",
    icon: Icons.add),
  MenuItem(
      title: "Botones",
      subtitle: "Botones en flutter",
      link: "/buttons",
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: "Tarjetas",
      subtitle: "Tarjetas en flutter",
      link: "/cards",
      icon: Icons.credit_card),
  MenuItem(
      title: "Progress Indicator",
      subtitle: "Generales y controlados",
      link: "/progress",
      icon: Icons.refresh_rounded),
  MenuItem(
      title: "Snackbars & Dialogs",
      subtitle: "Indicadores en pantalla",
      link: "/snackbars",
      icon: Icons.info_outline),
  MenuItem(
      title: "Google Maps",
      subtitle: "Maps",
      link: "/maps_google",
      icon: Icons.map_outlined),
  MenuItem(
      title: "Animated container",
      subtitle: "Stateful widget animado",
      link: "/animated",
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: "UI Controls + Tiles",
      subtitle: "Serie de controles en Flutter",
      link: "/ui-controls",
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: "Tutorial",
      subtitle: "Tutorial de la App",
      link: "/tutorial",
      icon: Icons.accessible_rounded),
  MenuItem(
      title: "Infinite Scroll & pull",
      subtitle: "Scroller infinito y pull refresh",
      link: "/infinite",
      icon: Icons.list_alt_outlined),
  MenuItem(
      title: "Theme changer",
      subtitle: "Cambiar el tema + Riverpod Provider",
      link: "/theme-changer",
      icon: Icons.palette_outlined),

];
