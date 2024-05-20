import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Counter-app",
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

int count=0;
void counter(){
setState(() {
  count++;
});

}

void reset(){
  setState(() {
    count=0;
  });
}

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter app"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text("$count"
                ,
                style: const TextStyle(fontSize: 100),
              ),
              const SizedBox(height: 200,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        counter();
                      },
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      child: const Text(
                        "Count",
                        style: TextStyle(color: Colors.white),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        reset();
                      },
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      child: const Text("Reset",
                          style: TextStyle(color: Colors.white))),
                ],
              ),
              const Spacer(),
              const Text("Developed by Nabin Parajuli")
            ],
          ),
        ),
      ),
    );
  }
}
