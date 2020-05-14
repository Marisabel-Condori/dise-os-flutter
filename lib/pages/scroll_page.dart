import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Text('HOLA');
  }
  Widget _pagina2() {
    return Text(':***');
  }
}