import 'package:flutter/material.dart';

void main() => runApp(const CounterApp());
class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Counter App',
      home: CounterScreenState(),
    );
  }
  
}


class CounterScreenState extends StatefulWidget{
  const CounterScreenState({super.key});

  @override
  CounterScreen createState() => CounterScreen();
}
class CounterScreen extends State<CounterScreenState> {
  int _count=0;
  void _incrementCount(){
    setState(() {
      _count++;
    });
  }
  void _decrementCount(){
    if(_count<1){
      return;
    }
    setState(() {
      _count--;
    });
  }
  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed:_incrementCount,
              child: const Icon(Icons.add),
            ),
            Text("$_count"),
            FloatingActionButton(
             onPressed: _decrementCount,
             child: const Icon(Icons.remove),
            ),

          ],


      ),
    ),
    );
  }
}