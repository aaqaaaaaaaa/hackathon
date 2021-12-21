import 'package:flutter/material.dart';
import 'package:untitled/screens/drawer.dart';
import 'package:untitled/utilities/Chart_model.dart';
import 'package:untitled/utilities/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
                    builder: (BuildContext context) => const MyHomePage(
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
                    builder: (BuildContext context) => const MyHomePage(
                      title: 'Apartments',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: blackColor),
        backgroundColor: whiteColor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: primaryColor,
              ),
            ),
          ),
        ],
        title: const Text(
          'Appco',
          style: TextStyle(color: Colors.black, fontFamily: fontFamily),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 30),
          child: Column(children: [
            const SizedBox(
              height: 40,
            ),
            zagolovok(title: 'Asosiy boshqaruv'),
            const SizedBox(
              height: 20,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width / 1.07),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    cardWidget(context,
                        color: const Color(0xffFE546F),
                        title: 'Xarajatlar',
                        icon: (Icons.money_sharp),
                        procent: '50',
                        price: "\$1,783"),
                    const SizedBox(
                      width: 10,
                    ),
                    cardWidget(context,
                        color: const Color(0xff409AF9),
                        title: 'Hodimlar',
                        procent: '23',
                        price: "14"),
                    const SizedBox(
                      width: 10,
                    ),
                    cardWidget(context,
                        color: const Color(0xff2ED7B6),
                        title: 'Jamg\'armalar',
                        procent: '\$72980',
                        price: "1,222"),
                    const SizedBox(
                      width: 10,
                    ),
                    cardWidget(context,
                        color: const Color(0xffFFB64D),
                        title: 'Uchrashuvlar',
                        procent: '11',
                        price: "14"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            zagolovok(title: 'So\'ngi uchrashuvlar'),
            const SizedBox(
              height: 20,
            ),
            listPerson(context)
          ]),
        ),
      ),
    );
  }
}

Widget zagolovok({String? title}) {
  return Padding(
    padding: const EdgeInsets.only(right: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$title',
          style: const TextStyle(
              color: primaryColor,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: primaryColor,
            size: 12,
          ),
        ),
      ],
    ),
  );
}

Widget listPerson(context) {
  return Container(
    height: 400,
    color: Colors.white,
    width: MediaQuery.of(context).size.width,
    child: ListView.separated(
        itemBuilder: (ctx, i) {
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(items[i].profileUrl),
            ),
            title: Text(
              items[i].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(items[i].message),
            trailing: Text(items[i].time),
          );
        },
        separatorBuilder: (ctx, i) {
          return Divider();
        },
        itemCount: items.length),
  );
}

Widget cardWidget(
  BuildContext context, {
  Color? color,
  String? title,
  String? price,
  final IconData? icon,
  String? procent,
}) {
  return Container(
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(5), color: color),
    width: MediaQuery.of(context).size.width / 1.8,
    height: 134,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
    child: Column(
      children: [
        Expanded(
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$title',
                    style: const TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: fontFamily,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$price',
                    style: const TextStyle(
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                icon,
                color: const Color(0xfffe546f),
              ),
            )
          ]),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '+$procent%',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white, fontSize: 10, fontFamily: fontFamily),
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              'From Previos Month',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    ),
  );
}
