
import 'package:flutter/material.dart';
import 'package:flutterapp1/Pagini/PaginaHome.dart';
import 'package:flutterapp1/widgets/bezierContainer.dart';

//import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget{
  final String title;
  LoginPage({Key key,this.title}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    //_LoginPageState  createState() => _LoginPageState();
    return new _LoginPageState();
  }
}



class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }


Widget _entryField(String title, {bool isPassword = false}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Color(0xfff3f3f4),
                filled: true))
      ],
    ),
  );
}

Widget _submitButton() {
  return InkWell(onTap: () {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  },
  child: Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.symmetric(vertical: 15),
    alignment: Alignment.center,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(2, 4),
              blurRadius: 5,
              spreadRadius: 2)
        ],
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xfffbb448), Color(0xfff7892b)])),
    child: Text(
      'Login',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ),
  );
}

Widget _divider() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: <Widget>[
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
        ),
        Text('or'),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    ),
  );
}

Widget _title() {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
        text: '',
        children: [
          TextSpan(
            text: 'WEARABLE',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          TextSpan(
            text: 'HEALTH',
            style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
          ),
        ]),
  );
}

Widget _emailPasswordWidget() {
  return Column(
    children: <Widget>[
      _entryField("Username"),
      _entryField("Password", isPassword: true),
    ],
  );
}
Widget _logoIP(){
    return Image(
      alignment: Alignment(Alignment.center.x,Alignment.center.y),
      image: AssetImage('Imagini/LogoProjIP.png'),
    );
}

@override
Widget build(BuildContext context) {
  return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: SizedBox(),
                      ),
                      _title(),
                      SizedBox(
                        height: 50,
                      ),
                      _emailPasswordWidget(),
                      SizedBox(
                        height: 20,
                      ),
                      _submitButton(),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.centerRight,
//                        child: Text('Forgot Password ?',
//                            style:
//                            TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                      ),
                      //_divider(),

                      Expanded(
                        flex: 2,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  //child: _createAccountLabel(),
                ),
               // Positioned(top: 40, left: 0, child: _backButton()),
                Positioned(
                    top: -MediaQuery.of(context).size.height * .15,
                    right: -MediaQuery.of(context).size.width * .4,
                    child: BezierContainer())
              ],
            ),
          )
      )
  );
}
}