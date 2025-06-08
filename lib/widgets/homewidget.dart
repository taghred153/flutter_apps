import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final String img;
  final String txt;
  final VoidCallback onTap;

  const HomeWidget({
    super.key,
    required this.img,
    required this.txt,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
          onPressed: onTap,
          color: Colors.white70,
          minWidth: 200,
          height: 150,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(img,
                height: 80,
                width: 80,
                fit: BoxFit.cover
              ),
              SizedBox(height: 20),
              Text(txt,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          )
      ),
    );
  }
}
