import 'dart:convert';

import 'package:flutter/services.dart'
    show rootBundle; //solo muestra el que necesitamos para leer el json

//loadString: carga el contenido del archivo
//.then= es asincronico, se ejecuta mientra corre la aplicacion en segundo plano

class _MenuProvider {
  List<dynamic> opciones = [];

  //constructor: se dispar una sola vez cuanod se ejecuta la aplicacion
  _MenuProvider() {
    //cargarData();
  }

//Future builder: se contruye cuanod todo el proceso termina - retorna la info cuando termine de crear
  //Aqui vamos a procesar el archivo json
  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu-opts.json');
    //Transformar el string en un mapa
    Map dataMap = jsonDecode(resp);

    //accedemos dentro del mapa
    //print(dataMap['rutas']);

    opciones = dataMap['rutas'];

    return opciones;
  }
}

//cREAMOS UNA INSTANCIA
final menuProvider = _MenuProvider();
