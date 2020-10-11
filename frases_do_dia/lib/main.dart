import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Frases do dia",
      home: HomeStateful(),
  ));
}

class HomeStateful  extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful > {
  var _frases = "Frases originais só aqui!";
  var _textos = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "Ut maximus quam sit amet dolor faucibus, vitae finibus orci consequat.",
    "Sed risus lacus, dapibus non bibendum vel, sollicitudin ac lorem.",
    "Vivamus scelerisque risus est, sed rhoncus purus mollis ut.",
    "Vestibulum ultricies semper leo a malesuada.",
    "Mauris faucibus euismod sapien ut bibendum.",
    "Etiam dignissim metus neque, placerat blandit leo cursus non. ",
    "Nullam a tellus vestibulum, accumsan diam in, lobortis magna. ",
    "Aenean vitae leo condimentum, pulvinar purus eget, ultricies justo.",
    "Mauris facilisis turpis libero, quis pellentesque quam posuere nec. ",
    "Quisque massa magna."];

  int _gerarFrases(){
    Random random = new Random();
    int randomNumber = random.nextInt(10);
    return randomNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App: frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
       /* decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                        "images/logo.png",
                      width: 150,
                    ),
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Text(
                  '"'+"$_frases"+'"',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 24,
                  fontStyle: FontStyle.italic
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(onPressed: (){
                  setState(() {
                    _frases = _textos[_gerarFrases()];
                  });
                },
                  child: Text(
                      "Nova frase",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
