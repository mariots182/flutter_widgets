import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "buttons_screen";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Buttons Screen"),
        ),
        body: const _ButtonsView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back_outlined),
        ));
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text('Evelated Button')),
              const ElevatedButton(
                  onPressed: null, child: Text('Evelated Button disabled')),
              ElevatedButton(
                  onPressed: () {}, child: const Icon(Icons.adb_sharp)),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.place_rounded),
                  label: const Text("Elevated icon")),
              FilledButton(onPressed: () {}, child: const Text('Filledbutton')),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.wallet_giftcard),
                label: const Text("Filled icon"),
              ),
              OutlinedButton(onPressed: () {}, child: const Text("Outlined")),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.wind_power_rounded),
                label: const Text("Outlined icon"),
              ),
              TextButton(onPressed: () {}, child: const Text("Text Button")),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.save),
                  label: const Text("Text icon")),
              IconButton(onPressed: () {}, icon: const Icon(Icons.face_sharp)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.healing_outlined),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(colors.primary)),
              ),
              const CustomButton()
            ]),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
  


  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: 20, 
              vertical:10
            ), 
            child:  Text("Custom Button"), 
          )
          
        )
      ),
    );
  }
}