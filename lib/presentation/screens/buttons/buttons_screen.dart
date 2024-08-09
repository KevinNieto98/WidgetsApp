import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'bottons_screen'; 
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child:  const Icon(Icons.arrow_back_ios_rounded) ),
    );
  }
}

class _ButtonsView extends StatelessWidget {

  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;    

    return  SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){}, 
              child: const Text('Elevated Button')
            ),
            const ElevatedButton(
              onPressed: null, 
              child:  Text('Elevated Disable'),
            ),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated Icon')
            ),
            FilledButton(
              onPressed: (){}, 
              child: const Text('Filled')
            ),
            FilledButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.account_box),
              label: const Text('Filled Icon'),
            ),
            OutlinedButton(
              onPressed: (){}, 
              child: const Text('Outlined Button')
            ),
            OutlinedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.add_a_photo),
              label: const Text('OutlinedButton Icon'),
            ),
            TextButton(
              onPressed: (){}, 
              child: const Text('Text Button')
            ),
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.add_link),
              label: const Text('TextButton Icon'),
            ),

            const CustomButton(),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.app_registration)
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.app_registration),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  colors.primary
                  ),
                iconColor: const MaterialStatePropertyAll(Colors.white),
              ),
            ),
          ],
        )
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;    

    return  ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:  Text(  
              "Custom Button",
              style: TextStyle(
                color: Colors.white,
          
              ),
            )),
        ),
      ),
    );
  }
}