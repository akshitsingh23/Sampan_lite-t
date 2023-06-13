import 'package:flutter/material.dart';

import 'main.dart';
import 'existing_person.dart';
import 'new_child.dart';
import 'person_info.dart';
import 'existing_child_list.dart';


class analysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Calculations'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/logo1.png'),
            opacity: 0.4,
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          // color: Colors.lightBlue.shade200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Opacity(
                    opacity: 0.9,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Result',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text('Name: John Doe'),
                          Text('Gender: Male'),
                          Text('DOB: 01/01/2000'),
                          Text('AWC Code: 1234'),
                          Text('Age: 23'),
                          Text('Weight: 65 kg'),
                          Text('Height: 170 cm'),
                          SizedBox(height: 16),
                          Container(
                            color: calculateBMI() < 18.5
                                ? Colors.red
                                : calculateBMI() < 25 ? Colors.green : Colors.orange,
                            child: ListTile(
                              title: Text('BMI: ${calculateBMI().toStringAsFixed(1)}'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Edit this person
                    },
                    icon: Icon(Icons.edit),
                    label: Text('Edit this Person'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Save in list
                    },
                    icon: Icon(Icons.upload_file),
                    label: Text('Save in List'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => new_child())
                      );
                      // Add new person
                    },
                    icon: Icon(Icons.add),
                    label: Text('New Child'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MyApp())
                      );
                      // Go to home screen
                    },
                    icon: Icon(Icons.home),
                    label: Text('Home'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Center(
                child: FloatingActionButton(
                  onPressed: () {
                    // Share button action
                  },
                  child: Icon(Icons.share),
                ),
              ),
            ],
          ),
        ),

      ),

    );
  }

  double calculateBMI() {
    // Replace with your BMI calculation logic
    return 22.5;
  }
}
