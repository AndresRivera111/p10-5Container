import 'package:flutter/material.dart';

void main() => runApp(MyContainersApp());

class MyContainersApp extends StatelessWidget {
  const MyContainersApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo Container | Andres Rivera 1295'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
        ),
        body: Stack(
          children: <Widget>[
            // Fondo con dos colores usando LinearGradient
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.white],
                  stops: [0.65, 0.65], // <-- Aquí se define la división
                ),
              ),
            ),
            // Contenedor blanco en la parte inferior
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 80),
                child: Container(
                  width: 320,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
