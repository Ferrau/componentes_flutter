//FUTURE: estados
//1. Cuando esta pidiando informacion
//2. Cuando se resuelve
//3. Cuando da un error

import 'package:componentes_flutter/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

//_lista = metodos internos de la propia clase
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes')),
      body: _lista(),
    );
  }

  Widget _lista() {
    //llamamos a la instancia que esta en la clase Menu_provider

    //menuProvider.cargarData()

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [], //aca puede ir un loading mientras carga la pagina
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> sanpshot) {},
    );

    //return ListView(children: _listaItems());
  }

  List<Widget> _listaItems() {
    return [
      ListTile(title: Text('Hola Mundo')),
      Divider(),
      ListTile(title: Text('Hola Mundo')),
      Divider(),
      ListTile(title: Text('Hola Mundo')),
    ];
  }
}
