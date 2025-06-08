import 'package:flutter/material.dart';

class RandomUserWidget extends StatelessWidget {
  final String title;
  final String first;
  final String last;
  final String email;
  final String phone;
  final String gender;
  final String urlphoto;
  const RandomUserWidget({
    super.key,
    required this.title,
    required this.first,
    required this.last,
    required this.email,
    required this.phone,
    required this.gender,
    required this.urlphoto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          child: Image.network (urlphoto),
            radius: 100
        ),
        SizedBox(height: 10),
        Text(gender),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 15,),
            Text(first),
            SizedBox(width: 15,),
            Text(last),
          ],
        ),
        SizedBox(height: 10),
        Text(email),
        SizedBox(height: 10),
        Text(phone),
      ],
    );
  }
}
