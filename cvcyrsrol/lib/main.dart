import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyCV(),
  ));
}

class MyCV extends StatelessWidget {
  const MyCV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 225, 225),
      appBar: AppBar(
        title: const Text("My CV"),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'CV Sections',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const SizedBox(width: 24), 
                    title: const Text('Education'),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    leading: const SizedBox(width: 24),
                    title: const Text('Skill'),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    leading: const SizedBox(width: 24),
                    title: const Text('Projects'),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    leading: const SizedBox(width: 24),
                    title: const Text('Experience'),
                    onTap: () {
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: const CVBody(),
    );
  }
}

class CVBody extends StatelessWidget {
  const CVBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 25),
          CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xFFBBDCFB),
            child: Text(
              'CR',
              style: TextStyle(fontSize: 40, color: Color(0xFF317fca)),
            ),
          ),
          Text(
            "Cyrus R. Rol",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "+63 950 267 0250",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 13,
                color: Color.fromARGB(160, 0, 0, 0)),
          ),
          Text(
            "rolcyrusrol@gmail.com",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 13,
                color: Color.fromARGB(160, 0, 0, 0)),
          ),
          ProfessionalGoalCard(),
        ],
      ),
    );
  }
}

class ProfessionalGoalCard extends StatelessWidget {
  const ProfessionalGoalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: SizedBox(
        width: 500,
        height: 100,
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Professional Goal',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
