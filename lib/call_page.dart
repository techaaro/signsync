import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

final String userId = Random().nextInt(9999).toString();

class CallPage extends StatelessWidget {
  const CallPage({super.key, required this.callId, required this.name});
  final String callId;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 907208680,
      appSign:
          "d09ed4b0e9eb42f60270f0ec8a754fe9762813d09117e8925d4cc0639bfad432",
      userID: userId,
      userName: name,
      callID: callId,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
