import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var _txt = " click something";

  void _incrementCounter() {
    setState(() {
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
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 179, 195, 203)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Text(
                  _txt,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _txt = "Text button got clicked";
                    });
                  },
                  child: const Text("Text Button")),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  onPressed: () {
                    setState(() {
                      _txt = "Elevated Button got clicked";
                    });
                  },
                  child: const Text("Elevated Button")),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _txt = "Outline Button got clicked";
                    });
                  },
                  child: const Text("Outline Button")),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _txt = "GestureDetector-image got clicked";
                    });
                  },
                  child: Image.network(
                      width: 50,
                      height: 50,
                      'https://avatars2.githubusercontent.com/u/35045612?s=280&v=4')),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      _txt = "InkWell-image got clicked";
                    });
                  },
                  child: Image.network(
                      width: 50,
                      height: 50,
                      'https://avatars2.githubusercontent.com/u/35045612?s=280&v=4')),
              const SizedBox(height: 10,),
              FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 49, 11, 8),
                onPressed: () {
                  setState(() {
                    _txt = "Floating Action Button got clicked";
                  });
                },
                tooltip: 'Floating Action Button',
                child: const Icon(Icons.favorite_border_sharp),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _txt = "Floating Action Button got clicked";
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
