import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    const Text("           Welcome             to  Indian  Railways",
                        style: TextStyle(fontSize: 45)),
                    const SizedBox(height: 200),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const First()));
                        },
                        child: const Text("Next"))
                  ],
                ),
              ),
            )));
  }
}

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Indian Railways"), centerTitle: true),
      body: ListView(
        children: [
          const Text("Introduction:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "                   Indian Railways (IR) is the state-owned railway company of India. Indian Railways had, until very recently, a monopoly on the country's rail transport. It is one of the largest and busiest rail networks in the world, transporting just over six  billion passengers and almost 750 million tonnes of freight annually. IR is the world's largest commercial or utility employer, with more than 1.6 million employees.The railways traverse through the length and width of the country; the routes cover a total length of 63,940  km (39,230  miles). As of 2005 IR owns a total of 216,717 wagons, 39,936 coaches and 7,339 locomotives and runs a total of 14,244 trains daily, including about 8,002 passenger trains .Railways were first introduced to India in 1853. By 1947, the year of India's independence, there were forty-two rail systems. In 1951 the systems were nationalised as one unit, becoming one of the largest networks in the world. Indian Railways operates both long distance and suburban rail systems.",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25)),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Second()));
              },
              child: const Text("Next"))
        ],
      ),
    );
  }
}

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Indian Railways"), centerTitle: true),
        body:GridView.count(crossAxisCount: 2,children: [
            OutlinedButton(onPressed: (){
              Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }, child: Image.asset("assets/1.png")),
            OutlinedButton(onPressed: (){
              Fluttertoast.showToast(msg: "Hello",
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 2,
              toastLength: Toast.LENGTH_LONG,
              backgroundColor: Colors.transparent,
              textColor: Colors.black,
              fontSize: 15);
            }, child: Image.asset("assets/2.png")),
            OutlinedButton(onPressed: (){}, child: Image.asset("assets/3.png")),
            OutlinedButton(onPressed: (){}, child: Image.asset("assets/4.png")),
            OutlinedButton(onPressed: (){}, child: Image.asset("assets/5.png")),
            OutlinedButton(onPressed: (){}, child: Image.asset("assets/6.png")),
            OutlinedButton(onPressed: (){}, child: Image.asset("assets/7.png")),
            OutlinedButton(onPressed: (){}, child: Image.asset("assets/8.png")),
          ],

        ));
  }


}
