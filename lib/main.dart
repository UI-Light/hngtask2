import 'package:flutter/material.dart';

//an app to collect and display user's name

void main() => runApp(MaterialApp(
  home: Home(),
));
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController clearInput = TextEditingController();
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Hng stage2 task"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            TextField(
              controller: clearInput,
              decoration: InputDecoration(
                labelText: "Name",
                hintText:"Please input your name",
                hintStyle: TextStyle(
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
              ),
              textInputAction: TextInputAction.done,
              onSubmitted: (String input ){
                setState(() {
                  name = "Your name is $input";
                });
                clearInput.clear();
              },
            ),

            SizedBox(height: 30),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Text(
                "$name",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[700]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
