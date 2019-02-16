import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// void main() {
//   runApp(MaterialApp(
//     title: 'Navigation Basics',
//     home: MyApp(),
//   ));
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'PitCheck',
      home: new Home(),
      routes: <String, WidgetBuilder>{
        '/dayend': (BuildContext context) => new DayEndRoute(),
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'PitCheck Menu';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.cyan,
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text('End of day'),
              onTap: (){
                print("Opening: End of day");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DayEndRoute()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.gamepad),
              title: Text('Pregame'),
              onTap: (){
                print("Opening: Pregame");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PregameRoute()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.battery_full),
              title: Text('Postgame'),
              onTap: (){
                print("Opening: Postgame");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostgameRoute()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DayEndRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("End of day checklist"),
      ),
      body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.label),
              title: Text('All bots running master'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Batteries charging'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Laptops away'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Controllers away'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Ethernet cleaned up'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Equipment locked up'),
              onTap: (){},
            ),
          ],
        ),
    );
  }
}

class PregameRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pregame checklist"),
      ),
      body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Code verified'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Laptop running DriverStation'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('HUD loaded'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Robot reset'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Compressor disabled'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Vision cam running'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Driver cam running'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Controllers configured'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Pi running'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Networktables running'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('No errors / warnings'),
              onTap: (){},
            ),
          ],
        ),
    );
  }
}

class PostgameRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Postgame checklist"),
      ),
      body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Legs up'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Robot reset'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Logs downloaded'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Check for errors / warnings'),
              onTap: (){},
            ),
          ],
        ),
    );
  }
}