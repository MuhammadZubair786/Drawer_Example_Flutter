import 'package:drawer_nav/Services.dart';
import 'package:flutter/material.dart';



class Home extends StatefulWidget {
 

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Container(
              width: 300.0,
              height: 500.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    "https://media.istockphoto.com/vectors/dark-abstract-background-vector-illustration-vector-id929619614?b=1&k=6&m=929619614&s=612x612&w=0&h=bzXWUYZ7R9wMSTmWANhfhh2ct3RAnOBVKMhqLDE1KiY="),
                // fit: BoxFit.cover
              )),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon((Icons.supervised_user_circle_rounded)),
                    color: Colors.white,
                    iconSize: 60,
                    onPressed: () {},
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ("User"),
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        ("User@gmail.com"),
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              )),
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  child: (Row(
                    children: <Widget>[
                      // ...
                      Expanded(
                        child: Column(
                          children: <Widget>[
                         
                            Divider(color: Colors.black)
                          ],
                        ),
                      )
                    ],
                  )),
                ),

                GestureDetector(onTap:(){
                  // Navigator.pop(context);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=>Home()));
                },
                child:  ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.home)),
                    color: Colors.red,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Home")
                
                ),
                ),
              
               
                 GestureDetector(onTap:(){
                  // Navigator.pop(context);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=>Services()));
                },
                child:  ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.home)),
                    color: Colors.red,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Services")
                
                ),
                ),
                  ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.contact_page)),
                    color: Colors.red,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Contact")
                
                ),
                ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.app_blocking_rounded)),
                    color: Colors.red,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("About")
                
                ),

                 ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.settings_sharp)),
                    color: Colors.red,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Setting")
                
                ),
                   ListTile(
                  leading:   IconButton(
                    icon: Icon((Icons.login_outlined)),
                    color: Colors.red,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  title: Text("Log Out")
                
                ),
                

               
              ],
            ),
            // GestureDetector(onTap: (){},child:ListTile(title:Text("hello"))),  //GestureDetector used for Drawer move one page to other
          ],
        ),
      ),
        body:Center(child: Text(("Home Page !"),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.purple),))

    ));
   
  }
}

