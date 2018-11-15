import 'package:flutter/material.dart';
import 'providers/bloc.providers.dart';
import 'widgets/favorite_view.dart';
import 'package:dfutbol/config/constants.dart';
import 'config/theme.dart';

void main(){
  sign;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: new MaterialApp(
        title: 'Flutter Demo',
        theme: theme,
        home: new MyHomePage(title: 'D\'Futbol'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        leading: Theme.of(context).platform == TargetPlatform.android ? new IconButton(icon: new Icon(Icons.menu, color: Colors.white, size: 35.0,), onPressed: (){_scaffoldKey.currentState.openDrawer();}) : new Divider(indent: 5.0, color: Colors.transparent,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget> [
//            new Icon(Icons.filter_tilt_shift, size: 35.0,),
//            new Divider(indent: 5.0, color: Colors.transparent,),
            new Text(widget.title, style: Theme.of(context).primaryTextTheme.title.copyWith(fontFamily: 'Alisandra',)),
          ],
        ),
        actions: <Widget>[
          Theme.of(context).platform == TargetPlatform.iOS ? new IconButton(icon: new Icon(Icons.menu, color: Colors.white, size: 35.0,), onPressed: (){_scaffoldKey.currentState.openDrawer();}): new Divider(indent: 5.0, color: Colors.transparent,),
        ],
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new Text("Drawer")
          ],
        ),
      ),
      body: FavoritesView(),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
