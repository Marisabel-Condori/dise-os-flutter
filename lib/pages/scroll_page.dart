import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _img(),
        _textos()
      ],
    );
  }
  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }
  Widget _img() {
    return Image(
      image: AssetImage('assets/scroll-1.png'),
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
  Widget _textos() {
    TextStyle estiloTexto = TextStyle(color: Colors.white, fontSize: 40.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11°', style: estiloTexto, ),
          Text('Miercoles', style: estiloTexto,),
          Expanded(child: Container(),),
          Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 60.0,),
        ],
      ),
    );
        
  }



  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          onPressed: (){},
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text('Bienvenidos')
            ),
         
          ),
        ),
    );
  }

  
}