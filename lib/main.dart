import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trixie\'s App',
      
      home: ProfileScreen(),
    ); 
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('trixie_dlc'),
        backgroundColor: const Color.fromARGB(255, 215, 57, 110),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(3.0), // Border width
                  decoration: BoxDecoration(
                    color: Colors.pink, // Border color
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/images/profile.PNG'),
                  ),
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                  'Trixie T. De la Cruz',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink),
                  ),
                    Text(
                  'Profile',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                 ],
                )
              ]
            ),
            SizedBox(height: 20.0),

            InfoSection(icon: Icons.cake, title: 'Birthdate', data: 'February 27, 2004'),
            InfoSection(icon: Icons.home, title: 'Address', data: 'Oracon Sur, Nueva Valencia, Guimaras'),
            InfoSection(icon: Icons.email, title: 'Email', data: 'trixie.delacruz@wvsu.edu.ph'),
            InfoSection(icon: Icons.info, title: 'Course', data: 'Bachelor of Science in Information Technology'),
            InfoSection(icon: Icons.phone, title: 'Phone number', data: '09461925226'),
            InfoSection(icon: Icons.person, title: 'Hobbies', data: 'Reading Novels, Cycling, Watching K-drama, Tiktok'),
            InfoSection(icon: Icons.favorite, title: 'Favorites', data: 'Reading, Eating'),

            Biography(),
          ],
        ),
      ),
    );
  }
}

class InfoSection extends StatelessWidget {
  final IconData icon;
  final String title;
  final String data;

  InfoSection({required this.icon, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
   return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 4.0), 
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 158, 186),
        border: Border.all(color: Colors.pink, width: 2.0),
      ),
      child: Row(
        children: [
          Icon(icon, size: 30.0, color: Colors.pink),
          SizedBox(width: 10.0),
          Text(
            '$title: ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(data),
        ],
      ),
    );
  }
}

class Biography extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 158, 186),
        border: Border.all(color: Colors.pink, width: 2.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
                'My Biography',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                'I am Trixie, a third year student of West Visayas State university taking up Bachelor of Science in Information Technology. '
                'I was born and raised in the province of Guimaras. Growing up, I have always been fascinated with nature especially farmlands and beaches '
                'which are abundant in my hometown. Loving the life in the province, it was a huge adjustment when I had to live in the city of Iloilo to pursue '
                'my education. As an aspiring tech professional, I had to go out of my comfort zone and build myself a future in a place where there are a lot of '
                'opportunities to further my knowledge and skills in the field of IT. Aside from my academic pursuit, I have always been invested in the art of writing. '
                'I have written poems and novels to express my deepest thoughts because I am an introverted person. Riding the wave of my dreams and striving to build a '
                'promising future is a challenge that I am more than willing to take for the sake of bravery. I do believe that I have God given strength to conquer anything life throws.',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
        ],
      ),
    );
  }
}