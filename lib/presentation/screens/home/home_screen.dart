import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final cantidad = appMenuItems.length;

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: cantidad,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTitle(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
        leading: Icon(menuItem.icon, color: colors.primary),
        trailing: Icon(
          Icons.chevron_right,
          color: colors.primary,
        ),
        title: Text(menuItem.title),
        subtitle: Text(menuItem.subtitle),
        onTap: () {
          context.push(menuItem.link);

          //Navigator.of(context).pushNamed(menuItem.link);

          //!Lo que estaba antes
          // Navigator.of(context).push(
          // MaterialPageRoute(
          //   builder: (context) => const ButtonsScreen(),
          // ),
        });
  }
}
