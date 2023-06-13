import 'package:flutter/material.dart';
import 'person_info.dart';
import 'new_child.dart';
import 'existing_child_list.dart';
import 'existing_person.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Sampan Lite',

      theme: ThemeData(
        // cardColor: Colors.grey,
        cardColor: Colors.blue.shade200,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent.shade700,),
        useMaterial3: true,

      ),
      home: const MyHomePage(title: ' SAMPAN LITE ',),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),

      ),
      body: Center(

        child: Container(
          color: Colors.grey.shade300,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,

            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/govi.png',
                    height: 180,
                    width: 5000,
                    alignment: Alignment.topCenter,

                  ),
                ],
              ),
              Container(
                color: Colors.red,
                width: 5000,
                height: 50,
                alignment: Alignment.centerLeft,
                child:const Text(
                 'SAMPAN LITE',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 24,
                   fontFamily: "Times New Roman",
                   fontWeight: FontWeight.w800,
                   backgroundColor: Colors.red,
                 ),
                    ),
              ),

              Container(
                color: Colors.red,
                width: 5000,
                height: 60,
                alignment: Alignment.centerLeft,
                child:const  Text(
                 'Severe Acute Malnourished: Progressive & Accentuated Nutrturing',
                 textAlign: TextAlign.left,
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w400,
                   backgroundColor: Colors.red,
                 ),
                    ),
              ),
                  // SizedBox(height: 50,),
                Container(
                  alignment: Alignment.center,
                  width: 5000,
                  height: 50,
                  color: Colors.blue,
                  child: const Text(
                    'Add Child information',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,

                      // backgroundColor: Colors.red,
                    ),
                  ),
                ),
                SizedBox(height: 6,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => new_child(),
                      ),
                      );
                      // Add child info - new child
                    },
                    icon: Icon(Icons.add),
                    label: Text('New Child'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      elevation: 10,

                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => existing_child_list())
                      );
                      // Add child info - existing child
                    },
                    icon: Icon(Icons.edit),
                    label: Text('Existing Child'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      onPrimary: Colors.white,
                      elevation: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6,),
              Container(
                alignment: Alignment.center,
                width: 5000,
                height: 50,
                color: Colors.blue,
                child: const Text(
                  'Add BMI information',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,

                    // backgroundColor: Colors.red,
                  ),
                ),
              ),
              SizedBox(height: 6,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 14,),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => person_info(),
                      ),
                      );
                      // Add info for BMI - new person
                    },
                    icon: Icon(Icons.add),
                    label: Text('New Person'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      elevation: 10,
                    ),
                  ),
                  SizedBox(width: 20,),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => existing_person())
                      );
                      // Add info for BMI - existing person
                    },
                    icon: Icon(Icons.edit),
                    label: Text('Existing Person'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      onPrimary: Colors.white,
                      elevation: 10,
                    ),
                  ),
                  SizedBox(height: 2,),
                ],
              ),

              Image.asset(
                'assets/images/logo1.png',
                height: 150,
                width: 2000,

                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ),
      ),


    );
  }
}
