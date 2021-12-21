import 'package:flutter/material.dart';



Widget drawer(BuildContext context){
  return  Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
          ),
          accountEmail: Text('jane.doe@example.com'),
          accountName: Text(
            'Jane Doe',
            style: TextStyle(fontSize: 24.0),
          ),
          decoration: BoxDecoration(
            color: Colors.black87,
          ),
        ),
        ListTile(
          leading: const Icon(Icons.house),
          title: const Text(
            'Houses',
            style: TextStyle(fontSize: 24.0),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) =>  MyHomePage(
                  title: 'Houses',
                ),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.apartment),
          title: const Text(
            'Apartments',
            style: TextStyle(fontSize: 24.0),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) =>  MyHomePage(
                  title: 'Apartments',
                ),
              ),
            );
          },
        ),
      ],
    ),
  );
}



class MyHomePage extends StatefulWidget {
   const MyHomePage({Key? key,required this.title});
 final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}
