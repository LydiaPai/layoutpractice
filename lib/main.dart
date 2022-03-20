import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  //建立appTitle物件
  // var appTitle = Text('Flutter App');
  //建立三個Text物件
  // final text1 = Text('物件1', style:  TextStyle(fontSize: 10),);
  // final text2 = Text('物件2', style:  TextStyle(fontSize: 20),);
  // final text3 = Text('物件3', style:  TextStyle(fontSize: 30),);
  //建立appBody物件
  // var appBody = Container(
  //   child: Column(
  //     children: <Widget>[text1, text2, text3],
  //     mainAxisAlignment: MainAxisAlignment.center,
  //   ),
  //   margin: EdgeInsets.all(10),
  // );
  // var appBar = AppBar(
  //   title: appTitle,
  // );
  // var app = MaterialApp(
  //   home: Scaffold(
  //     appBar: appBar,
  //     body: appBody,
  //   )
  // );
  //var img = Image.network('https://images.pexels.com/photos/6976092/pexels-photo-6976092.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
  ///////////////////////   row/column class     ////////
  // var appTitle = Text('Flutter App');
  // var appBody =Column(
  //   children: const <Widget>[
  //     Expanded(
  //       child: Text('Deliver features faster', textAlign: TextAlign.center),
  //     ),
  //     Expanded(
  //       child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
  //     ),
  //     Expanded(
  //       child: FittedBox(
  //         fit: BoxFit.contain, // otherwise the logo will be tiny
  //         child: const Image(
  //           image: AssetImage('assets/images/cat.png'),
  //         ),
  //       ),
  //     ),
  //   ],
  // );
  //
  // var appBar = AppBar(
  //   title: appTitle,
  // );
  // var app = MaterialApp(
  //   home: Scaffold(
  //     appBar: appBar,
  //     body: appBody,
  //   ),
  // );
///////////////////////   row/column class     ////////
  var appTitle = Text('Flutter App');
  var appBar = AppBar(
       title: appTitle,
  );

  var appBody = GridView.count(
    crossAxisCount: 2,
    padding: EdgeInsets.all(20.0),
    crossAxisSpacing: 20,
    mainAxisSpacing: 20,
    physics: BouncingScrollPhysics(),
    // children: <Widget>[
    //   Container(
    //     alignment: Alignment.center,
    //     color: Colors.blue,
    //   ),
    //   Container(
    //     alignment: Alignment.center,
    //     color: Colors.yellow,
    //   ),
    //   Container(
    //     alignment: Alignment.center,
    //     color: Colors.red,
    //   ),
    //   Container(
    //     alignment: Alignment.center,
    //     color: Colors.black12,
    //   ),
    //   Container(
    //     alignment: Alignment.center,
    //     color: Colors.white,
    //   ),
    //   Container(
    //     alignment: Alignment.center,
    //     color: Colors.purple,
    //   ),
    // ],


    children: <Widget>[
      Container(
        child: Text('Snoopy', style: TextStyle(fontSize: 20),),
        alignment: Alignment.center,
        color: Colors.brown,
      ),

      Image.network("http://2.bp.blogspot.com/-r54Xs4Qj_HA/T7m2AKiB31I/AAAAAAAAAEI/TiWN3RG6y7s/s320/967288_07.jpg"),

      Image.network("https://upload.wikimedia.org/wikipedia/zh/c/c8/Snoopy%28The_Peanuts%29.jpg"),

      Image.network("https://upload.wikimedia.org/wikipedia/zh/3/38/Charlie_Brown%28The_Peanuts%29.png"),

      Image.network("https://pic.pimg.tw/brook1958/1590043694-3791858210.png"),

      Image.network("https://pic.pimg.tw/brook1958/1590043650-2059283375.jpg"),



    ],
  );


  var app = MaterialApp(
    home: Scaffold(
      appBar: appBar,
      body: appBody,
    ),
  );

  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
