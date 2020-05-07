import 'package:flutter/foundation.dart';
import 'package:flutterapp1/main.dart';
import 'package:flutterapp1/widgets/NavDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


//class Total{
//  //List<Map<Album,dynamic>> albume;
//  List<Album> albume;
//  Total({this.albume});
//
//
//
//  factory Total.fromJson(Map<String, dynamic> json){
//    Iterable list=json[''];
//    print(list.runtimeType);
//    print('asdfasdf');
//
//
//    //List<Album> alb = list.map((i) => Album.fromJson(i)).toList();
//    //<Map<Album,dynamic>> alb = json.entries.map((e)=> Album(e.))
//
//
//    return Total(
//    albume:alb
//    ,);
//  }
//}

class Album {
  String username;
  String pass;
  int activ_id;
  int role_id;

  Album({this.username, this.pass, this.activ_id,this.role_id});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      username: json['username'] as String,
      pass: json['password'] as String,
      activ_id: json['active_id'] as int,
      role_id:  json['role_id'] as int,
    );
  }
}


Future<List<Album>> fetchAlbum() async {
  final response =
  await http.get('http://3.16.124.154:8080/wearablehealth/users/getAll');
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print('A luaat datele');
    return compute(parseAlbum,response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Nu a putut lua datele');
  }
}

List<Album> parseAlbum(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Album>((json) => Album.fromJson(json)).toList();
}


class AlbumList extends StatelessWidget {
  final List<Album> photos;

  AlbumList({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Center(

            child:Text(photos[index].username+'\n'+photos[index].pass)
        );
      },
    );
  }
}

class DateCon extends StatelessWidget{
  Future<Album> futureAlbum;
  final String title;
  DateCon({Key key,this.title}):super(key:key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Date de Conectare'),
      ),
        body: FutureBuilder<List<Album>>(
        future:fetchAlbum(),
        builder: (context, snapshot){
        //return Text('Merge??');
        if (snapshot.hasData) {
            return AlbumList(photos: snapshot.data);
        } else if (snapshot.hasError) {
                  print('asdfasdf');
                  return Text("${snapshot.error}");
                }

    // By default, show a loading spinner.
    return CircularProgressIndicator();
    }

    )
    );
  }
}
