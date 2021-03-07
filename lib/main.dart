import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konosuba Store!"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('pushed shopping cart!');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('pushed search!');
            },
          ),
        ],
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            flutterToast();
          },
          child: Text("Toast"),
          color: Colors.red,
        ),
      ),
      // MySnackBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/megumin.png'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/kazuma.png'),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/aqua.png'),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/darkness.png'),
                )
              ],
              accountName: Text("Megumin"),
              accountEmail: Text("megumin@conosuba.com"),
              onDetailsPressed: () {
                print('arrow!');
              },
              decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[850]),
              title: Text("Home"),
              onTap: () {
                print("Home!");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[850]),
              title: Text("Setting"),
              onTap: () {
                print("Setting!");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[850]),
              title: Text("Q&A"),
              onTap: () {
                print("Q&A");
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

// class MySnackBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: RaisedButton(
//         child: Text('Snack Bar!'),
//         color: Colors.red,
//         onPressed: () {
//           Scaffold.of(context).showSnackBar(
//             SnackBar(
//               content: Text(
//                 'Welcome to Konosuba Store!',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.white),
//               ),
//               backgroundColor: Colors.red,
//               duration: Duration(milliseconds: 1000),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

void flutterToast() {
  Fluttertoast.showToast(
      msg: "Welcome to Konosuba Store!",
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      fontSize: 20,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}
