import 'package:flutter/material.dart';
import 'package:flutterapp1/Pagini/DateConectare.dart';
import 'widgets/NavDrawer.dart';
import 'Pagini/welcomePage.dart';

//ToDo Sa moduific pagina de login cu logo ul nostru si textul corespunzor
//ToDo Sa prelucrez datele introdus in login ,anume sa rezolv partea de preluare a datelor de pe server si sa compar log in ul cu el ,
//daca datele sunt bune sa continue

//TODO sa fac paginile unde o sa se afiseze imaginile preluate de pe server

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paginaa_LogIn',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: WelcomePage(),
    );
  }


}



class Recomandari extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Recomandari'),
      ),
      body: Center(
        child: Text('Demo Recomandari'),
      ),
    );
  }
}

class UltimeleDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('UltimeleDate'),
      ),
      body: Center(
        child: Text('Demo Date'),
      ),
    );
  }
}

class Avertismente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Avertismente'),
      ),
      body: Center(
        child: new Image(
          image: AssetImage('Imagini/LogoProjIP.png'),
          //image: NetworkImage('https://cdn.pixabay.com/photo/2016/11/21/22/57/heart-1847868_1280.png'),
        ),
      ),
    );
  }
}

class Alarme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Alarme'),
      ),
      body: Center(
        child: Text('Demo Alarme'),
      ),
    );
  }
}