import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fourinarow/constants.dart';
import 'algo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var a = List.generate(6, (i) => List.generate(7, (i) => kgreyCircle),
      growable: false);
  int k, t = 2;
  Algo al = Algo();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int turn() {
    if (t == 2)
      t = 1;
    else
      t = 2;
    return t;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Container(
              margin: EdgeInsets.only(left: 2, right: 2, top: 5, bottom: 5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  NewCol(
                    a: a,
                    j: 0,
                    ontap: () {
                      int j1 = 0;
                      k = al.getK(j1, turn());
                      setState(() {
                        a[k][j1] = Expanded(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: al.getColor(k, j1),
                                shape: BoxShape.circle),
                          ),
                        );
                      });
                      if (1 == al.checkWinOrLose(k, j1)) {
                        if (t == 1)
                          print('red Wins');
                        else
                          print('blue wins');
                      }
                    },
                  ),
                  NewCol(
                    a: a,
                    j: 1,
                    ontap: () {
                      int j1 = 1;
                      k = al.getK(j1, turn());
                      setState(() {
                        a[k][j1] = Expanded(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: al.getColor(k, j1),
                                shape: BoxShape.circle),
                          ),
                        );
                      });
                      if (1 == al.checkWinOrLose(k, j1)) {
                        if (t == 1)
                          print('red Wins');
                        else
                          print('blue wins');
                      }
                    },
                  ),
                  NewCol(
                    a: a,
                    j: 2,
                    ontap: () {
                      int j1 = 2;
                      k = al.getK(j1, turn());
                      setState(() {
                        a[k][j1] = Expanded(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: al.getColor(k, j1),
                                shape: BoxShape.circle),
                          ),
                        );
                      });
                      if (1 == al.checkWinOrLose(k, j1)) {
                        if (t == 1)
                          print('red Wins');
                        else
                          print('blue wins');
                      }
                    },
                  ),
                  NewCol(
                    a: a,
                    j: 3,
                    ontap: () {
                      int j1 = 3;
                      k = al.getK(j1, turn());
                      setState(() {
                        a[k][j1] = Expanded(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: al.getColor(k, j1),
                                shape: BoxShape.circle),
                          ),
                        );
                      });
                      if (1 == al.checkWinOrLose(k, j1)) {
                        if (t == 1)
                          print('red Wins');
                        else
                          print('blue wins');
                      }
                    },
                  ),
                  NewCol(
                    a: a,
                    j: 4,
                    ontap: () {
                      int j1 = 4;
                      k = al.getK(j1, turn());
                      setState(() {
                        a[k][j1] = Expanded(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: al.getColor(k, j1),
                                shape: BoxShape.circle),
                          ),
                        );
                      });
                      if (1 == al.checkWinOrLose(k, j1)) {
                        if (t == 1)
                          print('red Wins');
                        else
                          print('blue wins');
                      }
                    },
                  ),
                  NewCol(
                    a: a,
                    j: 5,
                    ontap: () {
                      int j1 = 5;
                      k = al.getK(j1, turn());
                      setState(() {
                        a[k][j1] = Expanded(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: al.getColor(k, j1),
                                shape: BoxShape.circle),
                          ),
                        );
                      });
                      if (1 == al.checkWinOrLose(k, j1)) {
                        if (t == 1)
                          print('red Wins');
                        else
                          print('blue wins');
                      }
                    },
                  ),
                  NewCol(
                    a: a,
                    j: 6,
                    ontap: () {
                      int j1 = 6;
                      k = al.getK(j1, turn());
                      setState(() {
                        a[k][j1] = Expanded(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: al.getColor(k, j1),
                                shape: BoxShape.circle),
                          ),
                        );
                      });
                      if (1 == al.checkWinOrLose(k, j1)) {
                        if (t == 1)
                          print('red Wins');
                        else
                          print('blue wins');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Text(
                        '4',
                        style: ksmallgrey,
                      ),
                    ),
                    Container(
                      child: Text(
                        'in',
                        style: ksmallgrey,
                      ),
                    ),
                    Container(
                      child: Text(
                        'a',
                        style: ksmallgrey,
                      ),
                    ),
                    Text(
                      'Row',
                      style: ksmallgrey,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  ontt(int j1) {
    k = al.getK(j1, turn());
    setState(() {
      a[k][j1] = Expanded(
        child: Container(
          height: 50,
          width: 50,
          decoration:
              BoxDecoration(color: al.getColor(k, j1), shape: BoxShape.circle),
        ),
      );
    });
  }
}

class NewCol extends StatelessWidget {
  const NewCol({
    this.ontap,
    this.j,
    @required this.a,
  });
  final Function ontap;
  final List<List> a;
  final int j;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Column(
          children: <Widget>[
            for (int i = 0; i < 6; i++) a[i][j],
          ],
        ),
      ),
    );
  }
}
