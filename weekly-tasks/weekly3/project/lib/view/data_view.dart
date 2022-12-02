import 'package:flutter/material.dart';

import 'package:project/model/users_data.dart';

import 'widgets/main_drawer_widget.dart';

class DataUser extends StatefulWidget {
  const DataUser({super.key});

  @override
  State<DataUser> createState() => _DataUserState();
}

class _DataUserState extends State<DataUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Users'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 33, 0, 2),
      ),
      drawer: mainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 33, 0, 2),
              width: double.infinity,
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "Berkenalan dengan",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Montserrat-Regular",
                        letterSpacing: 1.8,
                        color: Color(0xFFFFAF00)
                      ),
                    ),
                    Text(
                      "User setia kami!",
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: "Montserrat-Regular",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.8,
                        color: Color(0xFFFFAF00)
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 190,
                      child: Divider(
                        height: 1,
                        color: Color(0xFFFFAF00)
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(height: 20),
                ],
                ),
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Card(
                  color: Colors.transparent,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xFFFFAF00), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ), 
                    textColor: Color(0xFFFFAF00),
                    iconColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    leading: const Icon(Icons.person),
                    isThreeLine: false,
                    // title: const Text(dataUser[0]['name']),
                    title: Text(
                      items[index].name!,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Montserrat-Regular",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index].email!,
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(items[index].message!),
                      ],
                    ),
                  ),
                ),
              );
              },
            ),
            SizedBox(height: 60,)
          ],
        )
      )
    );
  }
}