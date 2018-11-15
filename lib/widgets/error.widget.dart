import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height - kToolbarHeight,
        child: Center(
          child: Column(
            children: <Widget>[
              Icon(Icons.error, size: 50.0, color: Colors.red,),
              Text("Ha ocurrido un error", style: TextStyle(
                  color: Colors.black26,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold),),
            ],
          ),
        )
    );
  }

}