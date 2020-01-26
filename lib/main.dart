import 'package:flutter/material.dart';
import 'screens/screenConan.dart';
import 'vars.dart';

void main() => runApp(MaterialApp(home: MyApp(),));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                InkWell(
                  child: Icon(
                    Icons.search,
                    color: appbarColor,
                    size: sizeIconAppBar,
                  ),
                ),
                SizedBox(
                  width: paddingAppBar,
                ),
                Text(
                  'anmi App',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: paddingAppBar,
                ),
                InkWell(
                  child: Icon(
                    Icons.settings,
                    color: appbarColor,
                    size: sizeIconAppBar,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Row(
        children: <Widget>[
          InkWell(
            borderRadius: BorderRadius.circular(13),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
              return screenConan();
            }));},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: anmiContainerSize,
                height: anmiContainerSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    )),
                child: Image.asset('images/conan.jpeg'),
              ),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(13),
            onTap: () {
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: anmiContainerSize,
                height: anmiContainerSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    )),
                child: Image.asset('images/onePiece.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
