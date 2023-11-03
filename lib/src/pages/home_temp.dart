import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis',
    'Siete',
    'Ocho',
    'Nueve'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes Temp')),
      body: ListView(
          //children: _crearListado()
          children: _crearListadoCorto()),
    );
  }

  //Metodo que regresa una lista de widwet LARGO
  List<Widget> _crearListado() {
    List<Widget> lista = [];
    for (String opc in opciones) {
      //Le agregamos el titulo a cada uno de los arrays de nuestra lista
      final tempList = ListTile(title: Text(opc));

      //Loa agregamos a la lista
      //Le agregamos un divisor con operadores de Cascada
      lista
        ..add(tempList)
        ..add(Divider(
          height: 50,
          color: Colors.red,
          endIndent: 20.0,
        ));
    }
    return lista;
  }

  //Metodo que regresa una lista de Widget CORTO
  List<Widget> _crearListadoCorto() {
    //Creamos un mapa y lo retornamos
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          //1
          ListTile(
            title: Text(item + ' 2'),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons
                .access_alarm_outlined), //se posiciona del lado izquierdo de la pantalla como icono
            trailing: Icon(Icons
                .keyboard_arrow_right), //se posiciona el icono del lado derecho de la pantalla
            onTap: () {}, //Efecto de click en la pantalla
          ),

          //2
          Divider(),
        ],
      );
    }).toList(); //Convertimos una lista iterable a una lista de widget
  }
}
