import 'package:flutter/material.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://media.istockphoto.com/id/1486754158/vector/abstract-blue-blurred-gradient-mesh-background-design-for-your-presentation-vector-design.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/icon/icon.jpeg',
                  fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                ),
              ),
              Text(
                'SYED HASNAT ALI',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  'void main()\n{runApp(Learner())};',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Download CV',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
              ),
              Icon(Icons.mouse_outlined),
              Text('Scroll Down'),
              ElevatedButton(onPressed: () {}, child: Text('Contact Me')),
            ],
          ),
        ),
      ),
    );
  }
}
