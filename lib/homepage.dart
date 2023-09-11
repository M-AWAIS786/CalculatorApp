import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var num1=0,num2=0,temp=0;
  final TextEditingController t1= new TextEditingController(text: "0");
  final TextEditingController t2= new TextEditingController(text: "0");
  void add()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      temp=num1+num2;
    });
  }
  void sub()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      temp=num1-num2;
    });
  }
  void mul()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      temp=num1*num2;
    });
  }
  void div()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      temp=num1~/num2;
    });
  }
  void clear()
  {
    setState(() {
     t1.text="0";
     t2.text="0";

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Calculator App", style: TextStyle( color: Colors.white)),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Output: $temp",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 22.0)),
             Padding(padding: const EdgeInsets.all(8)),
             TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Enter Number 1",border:OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
                )),
                controller: t1,
              ),
            Padding(padding: const EdgeInsets.all(8)),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Enter Number 2",border:OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
              )),
              controller: t2,
            ),
            const Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: Text("+",style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.bold
                  )),
                  color: Colors.amber,
                  onPressed: add,
                ),
                MaterialButton(
                  child: Text("-",style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold
                  )),
                  color: Colors.amber,
                  onPressed: sub,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: Text("/",style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold
                  )),
                  color: Colors.amber,
                  onPressed: div,
                ),
                MaterialButton(
                  child: Text("*",style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold
                  )),
                  color: Colors.amber,
                  onPressed: mul,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  child: Text("Clear",style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold
                  )),
                  color: Colors.amber,
                  onPressed: clear,
                )
              ],
            )
          ],
        ),
      ),
    );


  }
}
