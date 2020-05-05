import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            _poster(),
            _botones(context),
            
          ],
        ),
      ),
    );
  }

  Widget _poster() {
    return Image(image: NetworkImage('https://st.depositphotos.com/1004221/1384/i/450/depositphotos_13846233-stock-photo-boardwalk-in-the-park.jpg'));
  }

  Widget _botones(context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      child: Column(
        children: <Widget>[
          _creaTexto(context),
          SizedBox(height: 15.0,),
          _creaBotones(),
          ],
        ),
    );
  }

  Widget _creaTexto(context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Oesddfd Lake Campground', style: Theme.of(context).textTheme.title,),
            Text('kandessss, Switere', style: Theme.of(context).textTheme.subhead,),
          ],
        ),
        SizedBox(width: 40.0,),
        Icon(Icons.star, color: Colors.red,),
        Text('41')
      ],
    );
  }

  Widget _creaBotones() {
    return Row(
      children: <Widget>[
        SizedBox(width: 40.0,),
        Column(
          children: <Widget>[
            IconButton(color: Colors.lightBlue,icon: Icon(Icons.call), onPressed: (){}),
            Text('CALL')
          ],
        ),
        SizedBox(width: 50.0,),
        Column(
          children: <Widget>[
            IconButton(color: Colors.lightBlue,icon: Icon(Icons.near_me), onPressed: (){}),
            Text('ROUTE')
          ],
        ),
        SizedBox(width: 50.0,),
        Column(
          children: <Widget>[
            IconButton(color: Colors.lightBlue,icon: Icon(Icons.share), onPressed: (){}),
            Text('SHARE')
          ],
        ),
      ],
    );
  }
}