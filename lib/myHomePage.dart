import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'calcLogic.dart';
import 'helpScreen.dart';


var numbers = new List();
var operators = new List();
var actions = new Map();
var result;

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {


  @override
  void initState() {
    super.initState();


    pushResult();


  }



  void pushResult(){
    this.setState(() {
      result = calculate(numbers, operators, actions);
      operators.clear();
      numbers.clear();
      if(result != 0.0){
        numbers.add(result);
      }
      actions.clear();

      print(numbers);

    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Calculator'),
        ),
        body:SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: <Widget>[
                    Expanded(child: Container(
                      constraints: BoxConstraints.expand(
                          width: 300.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text(result.toString()),
                      //color: Colors.lightBlue,
                      alignment: Alignment.center,
                    )),



                    Expanded(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[ButtonTheme(
                        minWidth: 80.0,
                        height: 60.0,
                        child: RaisedButton(
                          onPressed: () {
                            operators.clear();
                            numbers.clear();
                            actions.clear();
                            pushResult();
                          },
                          child: Text("C/CE"),
                        ),
                      ),
                        //SizedBox(width: 10.0, height: 60.0,),

                        ButtonTheme(
                          minWidth: 80.0,
                          height: 60.0,
                          child: RaisedButton(
                            onPressed: () {
                              operators.clear();
                              numbers.clear();
                              actions.clear();
                              pushResult();
                            },
                            child: Text("OFF"),
                          ),
                        ),
                        //SizedBox(width: 10.0, height: 60.0,),

                        ButtonTheme(
                          minWidth: 80.0,
                          height: 60.0,
                          child: RaisedButton(
                            onPressed: () {
                              pushResult();

                              },
                            child: Text("="),
                          ),
                        ),
                        //SizedBox(width: 10.0, height: 60.0,),

                        ButtonTheme(
                          minWidth: 80.0,
                          height: 60.0,
                          child: RaisedButton(
                            onPressed: () {operators.add(':');},
                            child: Text(":"),
                          ),
                        ),
                      ],),
                    ),
                    Expanded(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[ButtonTheme(
                        minWidth: 80.0,
                        height: 60.0,
                        child: RaisedButton(
                          onPressed: () {
                            numbers.add(1.0);
                            print(numbers);
                            },
                          child: Text("1"),
                        ),
                      ),
                        //SizedBox(width: 10.0, height: 60.0,),

                        ButtonTheme(
                          minWidth: 80.0,
                          height: 60.0,
                          child: RaisedButton(
                            onPressed: () {
                              numbers.add(2.0);
                              print(numbers);
                              },
                            child: Text("2"),
                          ),
                        ),
                        //SizedBox(width: 10.0, height: 60.0,),

                        ButtonTheme(
                          minWidth: 80.0,
                          height: 60.0,
                          child: RaisedButton(
                            onPressed: () {
                              numbers.add(3.0);
                              print(numbers);
                              },
                            child: Text("3"),
                          ),
                        ),
                        //SizedBox(width: 10.0, height: 60.0,),

                        ButtonTheme(
                          minWidth: 80.0,
                          height: 60.0,
                          child: RaisedButton(
                            onPressed: () {operators.add('*');},
                            child: Text("*"),
                          ),
                        ),
                        //SizedBox(width: 10.0, height: 60.0,),
                      ],),
                    ),


                    Expanded(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                        ButtonTheme(
                          minWidth: 80.0,
                          height: 60.0,
                          child: RaisedButton(
                            onPressed: () {numbers.add(4.0);},
                            child: Text("4"),
                          ),
                        ),
                        //SizedBox(width: 10.0, height: 60.0,),
                        ButtonTheme(
                          minWidth: 80.0,
                          height: 60.0,
                          child: RaisedButton(
                            onPressed: () {numbers.add(5.0);},
                            child: Text("5"),
                          ),
                        ),
                        //SizedBox(width: 10.0, height: 60.0,),
                        ButtonTheme(
                          minWidth: 80.0,
                          height: 60.0,
                          child: RaisedButton(
                            onPressed: () {numbers.add(6.0);},
                            child: Text("6"),
                          ),
                        ),
                        //SizedBox(width: 10.0, height: 60.0,),
                        ButtonTheme(
                          minWidth: 80.0,
                          height: 60.0,
                          child: RaisedButton(
                            onPressed: () {operators.add('-');},
                            child: Text("-"),
                          ),
                        )

                      ],

                      ),
                    ),
                    Expanded(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        ButtonTheme(
                            minWidth: 80.0,
                            height: 60.0,
                            child: RaisedButton(
                                onPressed: () {numbers.add(7.0);},
                                child: Text("7")
                            )),
                        //SizedBox(width: 10.0, height: 60.0,),
                        ButtonTheme(
                            minWidth: 80.0,
                            height: 60.0,
                            child: RaisedButton(
                                onPressed: () {numbers.add(8.0);},
                                child: Text("8")
                            )),
                        //SizedBox(width: 10.0, height: 60.0,),
                        ButtonTheme(
                            minWidth: 80.0,
                            height: 60.0,
                            child: RaisedButton(
                                onPressed: () {numbers.add(9.0);},
                                child: Text("9")
                            )),
                        //SizedBox(width: 10.0, height: 60.0,),
                        ButtonTheme(
                            minWidth: 80.0,
                            height: 60.0,
                            child: RaisedButton(
                                onPressed: () {
                                  operators.add('+');
                                  print(operators);
                                  },
                                child: Text("+")
                            ))],
                      ),
                    ),
                    Expanded(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[ButtonTheme(
                        minWidth: 80.0,
                        height: 60.0,
                        child: RaisedButton(
                          onPressed: () {actions['Sin'] = numbers.length+1; },
                          child: Text("Sin(X)"),
                        ),
                      ),
                        //SizedBox(width: 10.0, height: 60.0,),

                        ButtonTheme(
                          minWidth: 80.0,
                          height: 60.0,
                          child: RaisedButton(
                            onPressed: () {actions['Cos'] = numbers.length+1; },
                            child: Text("Cos(X)"),
                          ),
                        ),
                        //SizedBox(width: 10.0, height: 60.0,),

                        ButtonTheme(
                          minWidth: 80.0,
                          height: 60.0,
                          child: RaisedButton(
                            onPressed: () {actions['Tan'] = numbers.length+1; },
                            child: Text("Tan(X)"),
                          ),
                        ),
                        //SizedBox(width: 10.0, height: 60.0,),

                        ButtonTheme(
                          minWidth: 80.0,
                          height: 60.0,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(builder: (context) => new SecondScreen()),
                              );
                            },
                            child: Text("Help"),
                          ),
                        ),
                        //SizedBox(width: 10.0, height: 60.0,),
                      ],),
                    ),
                  ], //End on Column widgets
                ),
              ),
            )));


  }
}
