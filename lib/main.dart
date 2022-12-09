import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sliders()
    );
  }
}

class Sliders extends StatefulWidget {
  const Sliders({ Key? key }) : super(key: key);
  
  @override
  State<Sliders> createState() => _SlidersState();
}
  
class _SlidersState extends State<Sliders> {
  double curr=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text("Slider",style: TextStyle(fontSize: 15),),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10,),
            const Text("Manage font size",style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10,),
            Slider(
              min: 2,
              max: 50,
              value: curr,
              onChanged:(value){
                setState(() {
                  curr=value;                  
                });
              },
              divisions: 100,
              activeColor: Colors.green,
              inactiveColor: Colors.grey,
              label: curr.toInt().toString(),
            ),
            Text("Success",style: TextStyle(fontSize: curr),)
          ],
        ),
      ),
    );
  }
}

