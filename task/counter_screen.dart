import 'package:flutter/material.dart';

// state less contain one class provide widget

// state ful contain  classes

// 1. first class provide widget
// 2. second class provide state from this widget

class CounterScreen extends StatefulWidget
{
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

 int counter=0;
  // 1. constructor
  // 2. init state
  // 3. build

  @override
  void initState()
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Counter',
            style: TextStyle(fontSize:50,fontWeight:FontWeight.bold,color: Colors.black ),
          ),
        ),
     backgroundColor: Colors.lightBlue,
      ),
      body:

      ListView.separated(
    itemBuilder: (context,index)=> buildCounterItem(),
        separatorBuilder:(context,index)=>Padding(
          padding: const EdgeInsetsDirectional.only(start:20.0, end:20.0, ),
          child: Container(
              width: double.infinity,
              height: 5.0,
              color: Colors.lightBlue,
              ),
        ),
        itemCount: 20,),
        backgroundColor: Colors.white
    );
  }
  Widget buildCounterItem()=> Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(
        onPressed: ()
        {
          setState(()
          {

            counter--;
            print(counter);
          });
        },
        child: Text(
          'MINUS',
          style: TextStyle(fontSize:25,fontWeight:FontWeight.bold,color: Colors.indigoAccent),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Text(
          '$counter',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      TextButton(
        onPressed: ()
        {
          setState(() {
            counter++;
            print(counter);
          });
        },
        child: Text(
          'PLUS' ,

          style: TextStyle(fontSize:25,fontWeight:FontWeight.bold ,color: Colors.indigoAccent)

        ),

      ),
    ],
  );
}