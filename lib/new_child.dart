import 'package:flutter/material.dart';
import 'package:sampan_fl/Analyis.dart';
import 'package:sampan_fl/main.dart';
import 'package:sampan_fl/person_info.dart';
import 'package:sampan_fl/new_child.dart';
import 'package:sampan_fl/Analyis.dart';
// import 'package:date_format_field/date_format_field.dart';

class new_child extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:const Text(
            "Child Information"
        ),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 30,
          color: Colors.black
          // backgroundColor: Colors.redAccent.shade400,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/logo1.png'),
          opacity: 0.3,
          fit: BoxFit.cover,
          // colorFilter:
          // colorFilter: ColorFilter.mode(),
        ),
      ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              color: Colors.blue.shade200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 7000,
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
                      labelText: '      Name',
                      // icon: Icon(Icons.abc),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: '    Date of Birth(MM/DD/YYYY)',
                      icon: Icon(Icons.date_range),

                    ),
                    keyboardType: TextInputType.datetime,

                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration:InputDecoration(
                      labelText: 'Weight(grams)',
                      icon: Icon(Icons.scale_rounded),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Height(cm)',
                      icon: Icon(Icons.height),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: '       Gender(M/F)',
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: '      Mother\'s Name',
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: '       Father\'s Name',
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Date of Measurement(MM/DD/YYYY)',
                      icon: Icon(Icons.date_range_outlined),
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                  SizedBox(height: 32),
                  Container(
                    height: 30,
                    width: 7000,
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
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'AWC Code',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                    ),
                    keyboardType: TextInputType.streetAddress,
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Remarks',
                    ),
                  ),
                  SizedBox(height: 32),
                  Container(
                    color: Colors.redAccent,
                    width: 7000,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                builder: (context) => analysis()
                            )
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
      ),
    );
  }
}
