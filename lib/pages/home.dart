import 'package:doctor_application/components/tile.dart';
import 'package:doctor_application/pages/user_form.dart';
import 'package:flutter/material.dart';

import '../components/doctor_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Jae Hyun!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.person),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          //How do you feel section **fix later**
          Container(
            width: 375,
            height: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink[100],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          width: 100,
                          height: 140,
                          decoration: BoxDecoration(),
                          child: Image.asset(
                            'lib/icons/DoctorBox.png',
                            height: 100,
                            width: 80,
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "How do you feel?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Fill out your medical form\n card right now!",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[700]),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                return MedicalForm();
                              },)),
                              child: Container(
                                child: Center(
                                    child: Text(
                                  "Get Started",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                                width: 150,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.deepPurple[300],
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 30,
          ),
          //Medical search box

          Container(
            width: 375,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[400],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    'How can we help you?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.grey[400],
                    ),
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          //Scrollable list section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: MyTile(
                    image: 'lib/icons/dental-checkup.png',
                    name: 'Dentist',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.0),
                  child: MyTile(
                    image: 'lib/icons/scalpel.png',
                    name: 'Surgeon',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.0),
                  child: MyTile(
                    image: 'lib/icons/lungs.png',
                    name: 'Theatre',
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
          ),

           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Doctor List",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text("See All", style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[400],
                ),),
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                DoctorTile(
                  image: "lib/images/doctor1.jpg",
                  name: "Dr. Charles Clayton",
                  description: "Special orthopedic treatment",
                  rating: "5",
                ),
                SizedBox(width: 10,),
                DoctorTile(image: "lib/images/doctor3.jpg",
                  name: "Dr. Inayat Hamii",
                  description: "Special Surgery treatment",
                  rating: "4.2",),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
