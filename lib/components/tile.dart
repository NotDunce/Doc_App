import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {

  final String name;
  final String image;
  const MyTile({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: 
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image, 
                width: 40, 
                height: 40,
                ),
            ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(name, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.grey[500]
                  ),),
                ),
              )
          ],
        ),
    );
  }
}
