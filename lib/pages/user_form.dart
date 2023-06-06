import 'package:flutter/material.dart';

class MedicalForm extends StatefulWidget {
  const MedicalForm({super.key});

  @override
  State<MedicalForm> createState() => _MedicalFormState();
}

class _MedicalFormState extends State<MedicalForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Medical Form',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('please complete your enquiry below', style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[800]
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}