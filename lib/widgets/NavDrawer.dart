import 'package:flutter/material.dart';
import 'package:flutterapp1/Pagini/welcomePage.dart';
import 'package:flutterapp1/main.dart';
import 'package:flutterapp1/Pagini/DateConectare.dart';
import 'package:flutterapp1/Pagini/Calendar.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Meniu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Color(0xfff7892b),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Date de conectare'),
            onTap: () => {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DateCon()),
            )
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Calendar'),
            onTap: () => {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Calendar()),
            ),
            },
          ),
          ListTile(
            leading: Icon(Icons.accessibility_new),
            title: Text('Recomandari'),
            onTap: () => {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>WelcomePage()),
            ),
            },
          ),
          ListTile(
            leading: Icon(Icons.show_chart),
            title: Text('Ultimele Date'),
            onTap: () => {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UltimeleDate()),
            )
            },
          ),
          ListTile(
            leading: Icon(Icons.new_releases),
            title: Text('Avertismente'),
            onTap: () => {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Avertismente()),
            ),
            },
          ),
          ListTile(
            leading: Icon(Icons.watch_later),
            title: Text('Alarme'),
            onTap: () => {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Alarme()),
            ),
            },
          ),
        ],
      ),
    );
  }
}