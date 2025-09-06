
flutter doctor sirve para ver si esta bien instalado


# para centrar elementos

```dart
 body: Stack(
          children: [
                   Image(image: AssetImage('assets/images/avion.png')),
            Text(' aaasa', style: TextStyle(fontSize: 140, color: Colors.red),
            ),

```

el stack tiene una propiedad que es alignment

# Cambiar icono de app

usamos la utilidad https://icon.kitchen/

iconos de android en Hola_Mundo\hola_mundo\android\app\src\main\res
iconos IOS EN Hola_Mundo\hola_mundo\ios\Runner\Assets.xcassets\AppIcon.appiconset



# WIDGETS

TIPOS DE WIDGETS

StatelessWidget = no cambia con el tiempo.

StatefulWidget = sí cambia, puede redibujarse cuando hay interacción o datos nuevos.

ejemplo para cambiar de color a travez de botones


```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// Creando Widget desde cero
// class HomePage extends StatelessWidget { DEBEMOS CONVERTIR A STATEFILWIDGET PARA QUE CAMBIE DE COLOR
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color textColor = Colors.purple;

  void changeColor(Color color){
    setState(() {
      textColor = color;
    });
  }

// Metodo build
  @override
  Widget build(BuildContext context) {

// Color textColor = Colors.purple;

    return Scaffold(
// backgroundColor: Colors.white,
      body: Center(
        child: Column(
               mainAxisAlignment: MainAxisAlignment.center, // centra en vertical
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // espaciado de  widgets
              children: [
                GestureDetector(
                  onTap: () {
                    // textColor = Colors.red;
                    changeColor(Colors.red);
                  },

                  child: Container(width: 100, height: 100, color: Colors.red)),

                GestureDetector(
                  onTap: () {
                  //  textColor = Colors.purple;
                    changeColor(Colors.purple);

                    
                  },
                  child:
                      Container(width: 100, height: 100, color: Colors.purple)),

            
                GestureDetector(
                  onTap: () {
                    // textColor = Colors.blueAccent;
                    changeColor(Colors.blue);
                  },
                  child: Container(width: 100, height: 100, color: Colors.blueAccent)
                  ),

            ],),

            SizedBox(height: 50,),
            Text('Color',
            style: TextStyle(fontSize: 50, color: textColor),
            ),
          ],
        )
      ),
    );
  }
}


```dart


# Listas

```dart

  final List<String> frutas = ['Mango', 'Manzana', 'Banano', 'Sandia'];

  //  print(frutas[3]);

  //  print(frutas.indexOf('Banano1'));

  print(frutas.length);

  frutas.add('Pera');

  print(frutas.length);

  //insertar donde uno quiera

  frutas.insert(1, 'Frutilla');

  print(frutas);
  
  print(frutas.first);
  print(frutas.last);

  ```