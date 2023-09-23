import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'module 7 practice',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text('Home',style: TextStyle(color: Colors.white),)
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 264.0,
              height: 160.0,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Center(child: Text('Md. Arafat Rahman')),
                          subtitle: Center(child: Text('Md. Arafat Rahman')),
                          trailing: Icon(Icons.phone),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Center(child: Text('Md. Arafat Rahman')),
                          subtitle: Center(child: Text('Md. Arafat Rahman')),
                          trailing: Icon(Icons.phone),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Center(child: Text('Md. Arafat Rahman')),
                          subtitle: Center(child: Text('Md. Arafat Rahman')),
                          trailing: Icon(Icons.phone),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Center(child: Text('Md. Arafat Rahman')),
                          subtitle: Center(child: Text('Md. Arafat Rahman')),
                          trailing: Icon(Icons.phone),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Center(child: Text('Md. Arafat Rahman')),
                          subtitle: Center(child: Text('Md. Arafat Rahman')),
                          trailing: Icon(Icons.phone),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Center(child: Text('Md. Arafat Rahman')),
                          subtitle: Center(child: Text('Md. Arafat Rahman')),
                          trailing: Icon(Icons.phone),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 264.0,
              height: 60.0,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0)
                  ),
                ),
                child: Icon(Icons.person,
                        size: 55),
              ),
            ),
            SizedBox(
              width: 264.0,
              height: 100.0,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0)
                  ),
                ),
                child: const Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Center(child: Text('Md. Arafat Rahman')),
                          subtitle: Center(child: Text('Md. Arafat Rahman')),
                          trailing: Icon(Icons.phone),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Center(child: Text('Md. Arafat Rahman')),
                          subtitle: Center(child: Text('Md. Arafat Rahman')),
                          trailing: Icon(Icons.phone),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Center(child: Text('Md. Arafat Rahman')),
                          subtitle: Center(child: Text('Md. Arafat Rahman')),
                          trailing: Icon(Icons.phone),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Center(child: Text('Md. Arafat Rahman')),
                          subtitle: Center(child: Text('Md. Arafat Rahman')),
                          trailing: Icon(Icons.phone),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Center(child: Text('Md. Arafat Rahman')),
                          subtitle: Center(child: Text('Md. Arafat Rahman')),
                          trailing: Icon(Icons.phone),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Center(child: Text('Md. Arafat Rahman')),
                          subtitle: Center(child: Text('Md. Arafat Rahman')),
                          trailing: Icon(Icons.phone),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
