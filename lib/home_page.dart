import 'package:flutter/material.dart';
import 'package:video_call_app/call_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final callIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: callIdController,
                decoration: const InputDecoration(
                  labelText: "Join a call by id",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return CallPage(callId: callIdController.text.toString());
                    }),
                  );
                },
                child: const Text("Join"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
