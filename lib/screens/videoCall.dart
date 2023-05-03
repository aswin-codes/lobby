import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lobby/screens/EntrepreneurCall.dart';
import 'package:lobby/screens/Home.dart';
import 'package:lobby/screens/NormalCall.dart';

class VideoCall extends StatelessWidget {
  const VideoCall({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    if (args.isLiked) {
      return EntrepreneurCall();
    } else {
      return NormalCall();
    }
  }
}
