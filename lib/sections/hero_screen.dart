import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.9,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://img.freepik.com/free-vector/blue-wallpaper-with-white-lines_483537-4468.jpg',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/icon/icon.jpeg',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'SYED HASNAT ALI',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),

              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 11, 55, 92),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.blue, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withValues(alpha: 0.5),
                      blurRadius: 9,
                      offset: Offset(-1, 1),
                    ),
                  ],
                ),
                child: Text(
                  '''void main(){
    runApp(
   FlutterDeveloper();
   );
}''',
                  style: GoogleFonts.cascadiaCode(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                child: Text(
                  'Download CV',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              SizedBox(height: 20),

              Icon(Icons.mouse_outlined, color: Colors.white),
              SizedBox(height: 20),

              Text(
                'Scroll Down',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(height: 20),

              ElevatedButton(onPressed: () {}, child: Text('Contact Me')),
            ],
          ),
        ),
      ),
    );
  }
}
