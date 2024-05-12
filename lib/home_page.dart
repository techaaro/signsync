import 'package:flutter/material.dart';
import 'package:video_call_app/call_page.dart';
import 'package:video_call_app/disbaled_call_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final callIdController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Video Call App",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: callIdController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Call ID",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 10,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  if (nameController.text.isNotEmpty &&
                      callIdController.text.isNotEmpty) {
                    _showDisabledDialog(context);
                  } else {
                    _showEmptyFieldDialog(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple.shade50,
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.9, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Join",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Function to show dialog
  void _showDisabledDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Are you disabled?"),
          content:
              const Text("Please confirm if you are specially abled or not ?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _navigateToDisabledCallPage(context);
              },
              child: const Text("Yes"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _navigateToCallPage(context);
              },
              child: const Text("No"),
            ),
          ],
        );
      },
    );
  }

  // Function to show empty field dialog
  void _showEmptyFieldDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert"),
          content: const Text("Please fill all fields."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  // Function to navigate to CallPage
  void _navigateToCallPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return CallPage(
          callId: callIdController.text.toString(),
          name: nameController.text.toString(),
        );
      }),
    );
  }

  // Function to navigate to disbaled CallPage
  void _navigateToDisabledCallPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return DisabledCallPage(
          callId: callIdController.text.toString(),
          name: nameController.text.toString(),
        );
      }),
    );
  }
}
