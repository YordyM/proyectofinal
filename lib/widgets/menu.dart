import 'package:cursosmaster/pages/AnimalesPlantas.dart';
import 'package:cursosmaster/pages/AppSoftware.dart';
import 'package:cursosmaster/pages/BellezaModa.dart';
import 'package:cursosmaster/pages/EnprendimientoDigital.dart';
import 'package:cursosmaster/pages/TecnologiaInformacion.dart';
import 'package:flutter/material.dart';

import '../main.dart';

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
        return AppSoftware();
      case 2:
        return BellezaModa();
      case 3:
        return TecnologiaInformacion();
      case 4:
        return EnprendimientoDigital();
      case 5:
        return AnimalesPlantas();
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
                color: Colors.blue,
              ),
              child: Text(
                'MENÚ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 54,
                ),
                textAlign: TextAlign.center,
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
            const Divider(
              color: Colors.black,
            ),
            const Text(
              'Categorias',
              style: TextStyle(fontSize: 30, color: Colors.blueGrey),
              textAlign: TextAlign.center,
            ),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
              selected: (1 == _item),
              leading: const Icon(Icons.apps),
              title: const Text(
                'Apps y Software:',
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
                'Belleza y moda:',
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
              leading: const Icon(Icons.tablet_android_sharp),
              title: const Text(
                'Tecnología de la Información',
                style: TextStyle(
                    fontFamily: AutofillHints.addressCityAndState,
                    fontStyle: FontStyle.normal,
                    fontSize: 20),
              ),
              onTap: () {
                _SetItemDrawer(3);
              },
            ),
            ListTile(
              selected: (2 == _item),
              leading: const Icon(Icons.attach_money_rounded),
              title: const Text(
                'Emprendiento digital',
                style: TextStyle(
                    fontFamily: AutofillHints.addressCityAndState,
                    fontStyle: FontStyle.normal,
                    fontSize: 20),
              ),
              onTap: () {
                _SetItemDrawer(3);
              },
            ),
            ListTile(
              selected: (2 == _item),
              leading: const Icon(Icons.nature),
              title: const Text(
                'Animales y plantas',
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
        return AppSoftware();
      case 2:
        return BellezaModa();
      case 3:
        return TecnologiaInformacion();
      case 4:
        return EnprendimientoDigital();
      case 5:
        return AnimalesPlantas();
      
      default:
        return const Center(
          child: Text('Página no encontrada'),
        );
    }
  }
}
