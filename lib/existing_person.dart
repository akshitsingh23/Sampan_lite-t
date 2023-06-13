import 'package:flutter/material.dart';
import 'package:sampan_fl/main.dart';
import 'package:sampan_fl/person_info.dart';
import 'package:sampan_fl/new_child.dart';
import 'package:sampan_fl/existing_person.dart';
class existing_person extends StatelessWidget {
  final List<Student> students = [
    Student('John Doe', 10, 'Male', 15, 20, 25, '2023-05-30', 120),
    Student('Jane Smith', 12, 'Female', 18, 22, 28, '2023-05-29', 130)];
  // Add more student entries here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:const Text(
            "Exist Person Information"
        ),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 30,
          // backgroundColor: Colors.redAccent.shade400,
        ),
      ),
      body: Container(
        color: Colors.lightBlue.shade100,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Filter by date of measurement
                },
                icon: Icon(Icons.date_range),
                label:const Text(
                  'Filter by Date of Measurement',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange.withOpacity(0.9),
                  onPrimary: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text('Show Only Latest Entry for Each Child',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                ElevatedButton.icon(
                  onPressed: () {
                    // Toggle selection
                  },
                  icon: Icon(Icons.radio_button_unchecked),
                  label:Text('Show Only Latest Entry for Each Child'),
                  style: ElevatedButton.styleFrom(
                      primary:Colors.lightBlueAccent,
                      onPrimary: Colors.white
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SelectButton(text: 'All'),
                SelectButton(text: 'SAM'),
                SelectButton(text: 'MAM'),
                SelectButton(text: 'Normal'),
              ],
            ),
            SizedBox(height: 5),
            TextFormField(
              decoration:const InputDecoration(
                labelText: 'Title Name',
                icon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Name'),
                Text('Age'),
                Text('Gender'),
                Text('W*'),
                Text('U*'),
                Text('S*'),
                Text('DOM'),
                Text('Ht'),
              ],
            ),
            SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: students.length,
              itemBuilder: (context, index) {
                final student = students[index];
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(student.name),
                        Text(student.age.toString()),
                        Text(student.gender),
                        Text(student.w.toString()),
                        Text(student.u.toString()),
                        Text(student.s.toString()),
                        Text(student.dom),
                        Text(student.height.toString()),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SelectButton extends StatelessWidget {
  final String text;

  const SelectButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text(text),
    );
  }
}

class Student {
  final String name;
  final int age;
  final String gender;
  final int w;
  final int u;
  final int s;
  final String dom;
  final int height;

  Student(this.name, this.age, this.gender, this.w, this.u, this.s, this.dom, this.height);
}
