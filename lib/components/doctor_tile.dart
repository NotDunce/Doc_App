import 'package:flutter/material.dart';

class DoctorTile extends StatelessWidget {
  final String name;
  final String description;
  final String image;
  final String rating;
  const DoctorTile({super.key, required this.name, required this.description, required this.image, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 180,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                  child: Column(children: [
                    SizedBox(height: 12),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(image, height:70,)),
                    Container(
                      width: 50,
                      height: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(rating, style: TextStyle(fontWeight: FontWeight.bold),),
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.deepPurple[200],
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(name, style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text(description, style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),),
                      ],
                    ),
                  ],)
                  
                );
  }
}