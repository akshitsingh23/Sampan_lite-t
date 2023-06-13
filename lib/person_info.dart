import 'package:flutter/material.dart';
import 'package:sampan_fl/main.dart';
import 'package:sampan_fl/person_info.dart';
import 'existing_person.dart';
import 'calculations.dart';
class person_info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:const Text(
          "Person Information"
        ),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 30,
            color: Colors.black

          // backgroundColor: Colors.redAccent.shade400,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            color: Colors.blue.shade200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Container(
                 height: 30,
                 width: 5000,
                 color: Colors.redAccent,
                 child: const Text(
                    'Required Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
               ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: '        Name',
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Date of Birth(MM/DD/YYYY)',
                    icon: Icon(Icons.date_range),
                  ),
                  keyboardType: TextInputType.datetime,
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration:InputDecoration(
                    labelText: 'Weight(kgs)',
                    icon: Icon(Icons.scale_sharp),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Height(metres)',
                    icon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: '          Gender(M/F)',
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: '          Spouse\'s Name',
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: '         Father\'s Name',
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Date of Measurement(MM/DD/YYYY)',
                    icon: Icon(Icons.date_range),
                  ),
                  keyboardType: TextInputType.datetime,
                ),
                SizedBox(height: 32),
                Container(
                  height: 30,
                  width: 5000,
                  color: Colors.redAccent,
                  child:const Text(
                    'More Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Contact Number',
                    icon: Icon(Icons.phone),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:'       AWC Code',
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: '      Address',

                  ),
                  keyboardType: TextInputType.streetAddress,
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: '      Remarks',
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  color: Colors.redAccent,
                  height: 40,
                  width: 5000,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Analyze Information     ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => calculations())
                          );
                          // Perform analysis on entered information
                        },
                        icon: Icon(Icons.check),
                        label: Text(''),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green.shade300,
                          elevation: 30,
                          onPrimary: Colors.white
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
