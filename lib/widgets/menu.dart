import 'package:flutter/material.dart';

import '../main.dart';
import '../pages/page1.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _item = 0;

  getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        // ignore: prefer_const_constructors
        return MyApp();
      case 1:
        return const page1();
      case 2:
        return ();
      case 3:
        return ();
      // case 4:
      //   return ();
    }
  }

  // ignore: non_constant_identifier_names
  void _SetItemDrawer(int position) {
    Navigator.pop(context);
    setState(() {
      _item = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black38,
              ),
              child: Text(
                'EDWARD LEMUS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              selected: (0 == _item),
              leading: const Icon(Icons.home),
              title: const Text(
                'home: ',
                style: TextStyle(
                    fontFamily: AutofillHints.addressCityAndState,
                    fontStyle: FontStyle.normal,
                    fontSize: 20),
              ),
              onTap: () {
                _SetItemDrawer(0);
              },
            ),
            // Divider(
            //   color: Colors.black,
            // ),
            ListTile(
              selected: (1 == _item),
              leading: const Icon(Icons.tag),
              title: const Text(
                'Categorias y Productos:',
                style: TextStyle(
                    fontFamily: AutofillHints.addressCityAndState,
                    fontStyle: FontStyle.normal,
                    fontSize: 20),
              ),
              onTap: () {
                _SetItemDrawer(1);
              },
            ),
            ListTile(
              selected: (2 == _item),
              leading: const Icon(Icons.person),
              title: const Text(
                'Acerca de:',
                style: TextStyle(
                    fontFamily: AutofillHints.addressCityAndState,
                    fontStyle: FontStyle.normal,
                    fontSize: 20),
              ),
              onTap: () {
                _SetItemDrawer(2);
              },
            ),
            ListTile(
              selected: (2 == _item),
              leading: const Icon(Icons.arrow_forward_ios),
              title: const Text(
                'Page 2',
                style: TextStyle(
                    fontFamily: AutofillHints.addressCityAndState,
                    fontStyle: FontStyle.normal,
                    fontSize: 20),
              ),
              onTap: () {
                _SetItemDrawer(3);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_item),
    );
  }

  Widget _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return const MyApp();
      case 1:
        return const page1();
      // case 2:
      //   return MyAp();
      // case 3:
      //   return Login();
      // Agrega más casos según las páginas que quieras mostrar.
      default:
        return const Center(
          child: Text('Página no encontrada'),
        );
    }
  }
}
