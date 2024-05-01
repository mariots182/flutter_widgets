import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    const snackbar = SnackBar(content: Text("Hola Snackbar"));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void showCustomSnackbarAction(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text("Hola Snackbar Action"),
      action: SnackBarAction(label: 'OK', onPressed: () => {}),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void showCustomSnackbarActionWithTime(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text("Hola Snackbar Action"),
      duration: const Duration(milliseconds: 5),
      action: SnackBarAction(label: 'OK', onPressed: () => {}),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
  
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context)=> AlertDialog(
        title: const Text("¿Estas seguro?"),
        content: const Text("Ut consequat aliquip ullamco anim reprehenderit dolore amet."),
        actions: [
          TextButton(onPressed: ()=> Navigator.pop(context), child: const Text("Cancelar")),
          FilledButton(onPressed: ()=> Navigator.pop(context), child: const Text("Aceptar"))
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Snackbars & Dialogs")),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Title(
                color: Colors.black,
                child: const Text(
                  "SnackBars",
                  style: TextStyle(fontSize: 30),
                )),
            FilledButton.icon(
              onPressed: () => showCustomSnackbar(context),
              icon: const Icon(Icons.remove_red_eye_outlined),
              label: const Text("Mostrar SnackBar"),
            ),
            FilledButton.icon(
              onPressed: () => showCustomSnackbarAction(context),
              icon: const Icon(Icons.remove_red_eye_rounded),
              label: const Text("Mostrar SnackBar Action"),
            ),
            FilledButton.tonalIcon(
              onPressed: () => showCustomSnackbarAction(context),
              icon: const Icon(Icons.lock_clock),
              label: const Text("Mostrar SnackBar con tiempo"),
            ),
            const SizedBox(
              height: 40,
            ),
            Title(
                color: Colors.black,
                child: const Text(
                  "Dialogos",
                  style: TextStyle(fontSize: 30),
                )),
            FilledButton.tonal(
              onPressed: () => {
                showAboutDialog(context: context, children: [
                  const Text(
                      "Do fugiat ullamco sunt consequat magna ut laborum et ea deserunt incididunt nisi eu. Labore labore amet et non incididunt amet. Ad fugiat eu sit proident anim aute. Voluptate consequat consectetur minim minim occaecat cupidatat velit officia exercitation proident qui non esse reprehenderit. Laboris ad anim elit nulla do exercitation consectetur ad minim ad fugiat ipsum eu officia. Incididunt elit duis sunt ex commodo velit cupidatat officia magna quis ad dolor ad anim.")
                ])
              },
              child: const Text("View Licenses"),
            ),
            FilledButton(onPressed: ()=> openDialog(context), child: const Text("Mostrar dialogo"))
            // FilledButton.tonal(onPressed: ()=>{showGeneralDialog(context: context)}, child: const Text("View Licenses"),)
          ],
        ),
      ),
    );
  }
}
