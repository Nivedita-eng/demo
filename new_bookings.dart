import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'dart:async';

class New extends StatefulWidget {
  New({super.key});

  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  var date;
  int room = 1;
  int days = 1;
  bool isPaid = false;
   
  final TextEditingController _timeController = TextEditingController();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        _timeController.text = picked.format(context);
      });
    }
  }

  Container Rooms() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              icon: Icon(
                Icons.remove_circle_rounded,
                color: Colors.lightBlue,
              ),
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
              iconSize: 32.0,
              color: Colors.lightBlue,
              onPressed: () {
                setState(() {
                  room--;
                });
              }),
          Text(
            '$room',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.add_circle_outlined,
              color: Colors.lightBlue,
            ),
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
            iconSize: 32.0,
            color: Colors.lightBlue,
            onPressed: () {
              setState(() {
                room++;
              });
            },
          ),
        ],
      ),
    );
  }

  Container Days() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              icon: const Icon(
                Icons.remove_circle_rounded,
                color: Colors.lightBlue,
              ),
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
              iconSize: 32.0,
              color: Colors.lightBlue,
              onPressed: () {
                setState(() {
                  days--;
                });
              }),
          Text(
            '$days',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.add_circle_outlined,
              color: Colors.blue,
            ),
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
            iconSize: 32.0,
            color: Color.fromARGB(255, 56, 212, 240),
            onPressed: () {
              setState(() {
                days++;
              });
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/logo.jpg',
              fit: BoxFit.contain,
              height: 55.0,
              width: 60.0,
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              'Aalay',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),

      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 380,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(8)),
            child: const Text(
              "  Aditya Guest House",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),

          Container(
            padding: const EdgeInsets.all(20),
            width: 380,

            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "  Booking Details",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const Text(
                      "  Starting date:",
                      style: TextStyle(
                        fontSize: 23,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: DateTimeFormField(
                        decoration: const InputDecoration(
                          labelText: 'Enter Date',
                        ),
                        firstDate: DateTime.now().add(const Duration(days: 10)),
                        lastDate: DateTime.now().add(const Duration(days: 40)),
                        initialPickerDateTime:
                            DateTime.now().add(const Duration(days: 20)),
                        onChanged: (DateTime? value) {
                          date = value;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      " No.of Days",
                      style: TextStyle(
                        fontSize: 23,
                      ),
                    ),
                    const Spacer(),
                    Days(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      "No. of Rooms",
                      style: TextStyle(
                        fontSize: 23,
                      ),
                    ),
                    const Spacer(),
                    Rooms(),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),

          Container(
            padding: const EdgeInsets.all(20),
            width: 380,

            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "  Guest Details",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "  Guest Name",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "  Company Name",
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                Row(
                  children: [
                     Text(
                      "  Arival time:",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
              

                    const SizedBox(width: 20,),

                    Container(
                      height: 27,
                      width: 150,
                      decoration: BoxDecoration(border: Border.all()),
                      child: TextField(
                        controller: _timeController,
                        readOnly: true,
                        onTap: () {
                          Future<TimeOfDay?> selectedTime = showTimePicker(
                            initialTime: TimeOfDay.now(),
                            context: context,
                          );
                        },
                        decoration: const InputDecoration(
                            hintText: "  00:00",
                            hintStyle: TextStyle(fontSize: 22)),
                      ),
                    ),
                ],
                ),


                  ],
                ),
              
            ),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color(0xFFB2EBF2), // Set the background color
              borderRadius: BorderRadius.circular(8.0), // Optional: round corners
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Billing',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: const Text('Free'),
                        leading: Radio(
                          value: true,
                          groupValue: true,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text('Paid'),
                        leading: Radio(
                          value: false,
                          groupValue: true,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0), // Add space between elements
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PO copy',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle upload action
                },
                icon: Icon(Icons.upload),
                label: Text('UPLOAD'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFB2EBF2), // Background color
                  foregroundColor: Colors.white, // Text color
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle proceed action
            },
            child: Text('PROCEED'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF00BCD4), // Background color
              foregroundColor: Colors.white, // Text color
              padding: EdgeInsets.symmetric(vertical: 16.0),
              textStyle: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
        ),
      ),
    );

  }
}