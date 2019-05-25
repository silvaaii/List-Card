import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "ListView",
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey[900],
        title: new Text("Daftar Properti"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: new ListView(
              children: <Widget>[
                new ListProperti(
                  picture: 'assets/kasur.jpg',
                  title: "Dark linen (Size - S)",
                  color: "Colour - blue & white",
                  price: "69 Dollar",
                  number: "3",
                ),
                new ListProperti(
                  picture: 'assets/kasur.jpg',
                  title: "Dark linen (Size - L)",
                  color: "Colour - soft white",
                  price: "69 Dollar",
                  number: "1",
                ),
                new ListProperti(
                  picture: 'assets/meja.jpg',
                  title: "Dark linen (Size - L)",
                  color: "Colour - Dark Black",
                  price: "69 Dollar",
                  number: "2",
                ),
                new ListProperti(
                  picture: 'assets/meja.jpg',
                  title: "Dark linen (Size - S)",
                  color: "Colour - Sweet Creme",
                  price: "69 Dollar",
                  number: "3",
                ),
                //  new ListProperti(
                //             picture: 'assets/kasur.jpg',
                //             title: "Dark linen (Size - S)",
                //             color: "Colour - blue & white",
                //             price: "69 Dollar",
                //             number: "3",
                //           ),
              ],
            ),
          ),
          footer(context)
        ],
      ),
    );
  }

  // gambar({Image child}) {}
  footer(BuildContext context) => Container(
        padding: new EdgeInsets.only(left: 40, right: 40, bottom: 20),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          color: Colors.grey,
          child: Text("451 Pay"),
          onPressed: () {},
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
        ),
      );
}

class ListProperti extends StatelessWidget {
  ListProperti(
      {this.picture,
      this.title,
      this.color,
      this.price,
      this.number,
      this.icon});

  final String picture;
  final String title;
  final String color;
  final String price;
  final String number;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: new Container(
        padding: new EdgeInsets.all(10.0),
        // child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(
              image: AssetImage(picture),
              width: 80.0,
            ),
            new Container(
              padding: new EdgeInsets.only(left: 10.0),
              // child: new Center(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    title,
                    style: new TextStyle(fontSize: 20.0, color: Colors.red),
                    textAlign: TextAlign.left,
                  ),
                  new Container(
                    padding: new EdgeInsets.only(top: 5.0),
                    child: new Text(
                      color,
                      style:
                          new TextStyle(fontSize: 15.0, color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  new Container(
                    padding: new EdgeInsets.only(top: 5.0),
                    child: new Text(
                      price,
                      style: new TextStyle(
                        fontSize: 15.0,
                        color: Colors.green,
                      ),
                      textAlign: TextAlign.left,
                    )  ,
                  )
                ],
              ),
            ),
            new Container(
                padding: new EdgeInsets.only(top: 50.0),
                child: new Center(
                  child: new Row(
                    children: <Widget>[
                      new Icon(
                        Icons.cancel,
                        size: 20.0,
                      ),
                      new Text(
                        number,
                        style:
                            new TextStyle(fontSize: 15.0, color: Colors.green),
                      ),
                      new Icon(
                        Icons.add_circle_outline,
                        size: 20.0,
                      ),
                    ],
                  ),
                )),
          ],
        ),
        // ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            //  header(),
            Expanded(
              child: middle(),
            ),

            footer(),
          ],
        ),
      ),
    );
  }

  header() => Container();

  middle() => Container();

  footer() => Container();
}
