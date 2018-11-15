import 'package:flutter/material.dart';


class EmptyView extends StatelessWidget {
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
              Icon(Icons.sentiment_very_dissatisfied, size: 50.0, color: Colors.orange,),
              Text("La búsqueda no ha dado resultados \n ¡Pruebe otros filtros!", style: TextStyle(
                  color: Colors.black26,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold),maxLines: 3, textAlign: TextAlign.center,),
            ],
          ),
        )
    );
  }

}