import 'package:flutter/material.dart';

class TitleHome extends StatelessWidget {
  TitleHome(this.startPlay_call,{
    super.key,
  });

  VoidCallback startPlay_call;
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/home_back.jpg'),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Try your trivia skills.',
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.w300, color: Colors.blue),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 22),
          child: OutlinedButton(
            onPressed: startPlay_call,
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white, elevation: 3),
            child: const Text(
              'Play',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w300,
                  color: Colors.blue),
            ),
          ),
        ),
      ],
    );
  }
}
