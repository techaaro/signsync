import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class DisabledCallPage extends StatelessWidget {
  DisabledCallPage({super.key, required this.callId, required this.name});
  final String callId;
  final String name;

  final String userId = Random().nextInt(9999).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ZegoUIKitPrebuiltCall(
            appID: 907208680,
            appSign:
                "d09ed4b0e9eb42f60270f0ec8a754fe9762813d09117e8925d4cc0639bfad432",
            userID: userId,
            userName: name,
            callID: callId,
            config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
          ),
          Positioned(
            top: 503,
            left: 0,
            right: 0,
            bottom: 130,
            child: Container(
              color: Colors.transparent,
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: SingleChildScrollView(
                    child: Text(
                      'A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
