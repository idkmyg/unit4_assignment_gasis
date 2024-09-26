import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CC206 AppDev Assignment',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<String> imageList = [
    'assets/skz_album.jpg',
    'assets/txt_album.jpg',
    'assets/txt_freeze_album.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marg'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/marg_pfp.jpg'),
                ),
                const SizedBox(width: 16),
                Text(
                  'Margaux Oriana Gasis',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),

            DataTable(
              columnSpacing: 16,
              columns: const [
                DataColumn(
                  label:
                      Text('', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                DataColumn(
                  label:
                      Text('', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Name')),
                  DataCell(Text('Margaux Oriana Yap Gasis')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Email')),
                  DataCell(Text('margauxoriana.gasis@wvsu.edu.ph')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Contact Number')),
                  DataCell(Text('+639291576016')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Course')),
                  DataCell(Text(
                      'Bachelor of Science in Computer Science - Major in AI')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Hobbies')),
                  DataCell(Text('Drawing, Playing Games, Reading')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Likes')),
                  DataCell(Text(
                      'Tears of Themis, The Legend of Zelda, Fire Emblem 3 Houses')),
                ]),
              ],
            ),

            // Biography section
            Text(
              'My Biography',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Just a girl in a city doing alright. My childhood mainly consisted of playing games on the Nintendo DS with my sister. This caused me to become more introverted and got fascinated with technology hence how I ended up in this course. I certainly am not the best here but I am trying. I think that is what counts.',
                style: TextStyle(fontSize: 16),
              ),
            ),

            // Gallery section
            const SizedBox(height: 16),
            Text(
              'Albums on repeat:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Image.asset(imageList[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
