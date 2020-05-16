import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondo(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonRedondo()
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _fondo() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: FractionalOffset(0.0, 0.6),
        end: FractionalOffset(0.0, 1.0),
        colors: [
          Color.fromRGBO(52, 54, 101, 1.0),
          Color.fromRGBO(35, 37, 57, 1.0)
        ],
      )),
    );
    final caja = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ])),
      ),
    );
    return Stack(
        children: <Widget>[
          gradiente, 
          Positioned(
            top: -100,
            child: caja
          )
        ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0,),
            Text('Culpa do labore aliquip velit fugiat esse duis veniam proident et eu.', style: TextStyle(color: Colors.white, fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ), 
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container()
          ),
        ] 
      )
    );
  }

  Widget _botonRedondo(){
    return Table(
      children: [
        TableRow(
          children: [
            _crearBoton(Colors.pinkAccent, Icons.fastfood, 'comida'),
            _crearBoton(Colors.blue, Icons.radio, 'radio'),
          ]
        ),
        TableRow(
          children: [
            _crearBoton(Colors.orange, Icons.open_with, 'open'),
            _crearBoton(Colors.blueGrey, Icons.backup, 'nube'),
          ]
        ),
        TableRow(
          children: [
            _crearBoton(Colors.red, Icons.fastfood, 'comida'),
            _crearBoton(Colors.purple, Icons.fastfood, 'comida'),
          ]
        ),
        TableRow(
          children: [
            _crearBoton(Colors.lightGreen, Icons.fastfood, 'comida'),
            _crearBoton(Colors.amber, Icons.fastfood, 'comida'),
          ]
        )
      ],
    );
  }

  Widget _crearBoton( Color color, IconData icono, String texto) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
              height: 150.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: color,
                    radius: 30.0, 
                    child: Icon(icono, color: Colors.white, size: 35.0,),  
                  ),
                  SizedBox(height: 10.0,),
                  Text(texto, style: TextStyle(color: Colors.pinkAccent),),
                ],
              )
          ),
        ),
      ),
    );
  }
}