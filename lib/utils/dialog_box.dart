import 'package:flutter/material.dart';
import 'package:todo/utils/my_button.dart';


class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;

  DialogBox({super.key, required this.controller, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(

        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //save button
                MyButton(buttonName: "Save", onPressed: onSave),

                MyButton(buttonName: "Cancel", onPressed: (){
                  Navigator.of(context).pop();
                }),

                //cancel button


              ],
            ),
          ],
        ),
      ),
    );
  }
}
