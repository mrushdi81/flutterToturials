import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "mamdouh",
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              title: Text('mamdouh'),
              backgroundColor: Colors.deepPurple[800],
              actions: [
                IconButton(icon: Icon(Icons.ac_unit_sharp), onPressed: () {})
              ],
              centerTitle: true,
              elevation: 3,
            ),
            drawer: Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      child: Icon(Icons.verified_user),
                    ),
                    arrowColor: Colors.white,
                    onDetailsPressed: () {
                      print("user pic");
                    },
                    accountName: Text("Mamdouh Rushddddi"),
                    accountEmail: Text("mrma11581@gmail.com"),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://image.freepik.com/free-photo/abstract-grunge-decorative-relief-navy-blue-stucco-wall-texture-wide-angle-rough-colored-background_1258-28311.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  ListTile(
                    title: Text("الصفحة الرئيسية"),
                    contentPadding: EdgeInsets.all(3),
                    leading: Icon(Icons.home),
                    trailing: Icon(Icons.chevron_right),
                    onLongPress: () {
                      print("onlonpress");
                    },
                    onTap: () {
                      print("on tap");
                    },
                  ),
                  ListTile(
                    title: Text("الصفحة الرئيسية"),
                    contentPadding: EdgeInsets.all(3),
                    leading: Icon(Icons.access_alarm),
                    trailing: Icon(Icons.chevron_right),
                    onLongPress: () {
                      print("onlonpress");
                    },
                    onTap: () {
                      print("on tap");
                    },
                  ),
                  ListTile(
                    dense: true,
                    title: Text("الصفحة الرئيسية"),
                    contentPadding: EdgeInsets.all(3),
                    leading: Icon(Icons.create),
                    trailing: Icon(Icons.chevron_right),
                    onLongPress: () {
                      print("onlonpress");
                    },
                    onTap: () {
                      print("on tap");
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

// import 'package:flutter/material.dart';
// import 'package:mamdouhapp/encrypt.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   String plainText = 'PlainText is Me';
//   var txt = TextEditingController();
//   var pass = TextEditingController();
//   var resualt = TextEditingController();
//   var encrypted = encryptAESCryptoJS('mamdouh', "14325666");
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               controller: txt,
//             ),
//             TextField(
//               controller: pass,
//             ),
//             TextField(
//               controller: resualt,
//             ),
//             RaisedButton(onPressed: () {
//               resualt.text = encryptAESCryptoJS(txt.text, pass.text);
//               ;
//             }),
//             Text(encrypted),
//             Text(
//               'You have pu00000s0000hed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
