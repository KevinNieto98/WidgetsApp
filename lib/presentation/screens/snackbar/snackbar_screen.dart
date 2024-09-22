import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'OK', onPressed: () {}),
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) =>  AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text('Incididunt sint occaecat incididunt nisi quis anim ipsum qui in adipisicing ipsum. Exercitation officia excepteur enim Lorem do sint fugiat pariatur fugiat qui consequat proident. Eiusmod consequat sint amet minim incididunt enim ipsum. Ipsum excepteur reprehenderit est elit.'),
        actions: [
          TextButton(
            onPressed: () =>context.pop(),
            child:  const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () =>context.pop(),
            child: const  Text('Aceptar'),
          ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FilledButton.tonal(
            onPressed: () {
              showAboutDialog(context: context, children: [
                const Text('Ex esse magna est ut reprehenderit.')
              ]);
            },
            child: const Text('Licencias Usadas '),
          ),
          FilledButton.tonal(
            onPressed: () => openDialog(context),
            child: const Text('Mostrar Dialogos '),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
