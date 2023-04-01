import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Screens/Authentication/Login/LoginScreen.dart';
import 'package:apna_mart/Screens/Authentication/Welcome/WelcomeScreen.dart';
import 'package:video_player/video_player.dart';

import '../../Utils/Routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //Video controller
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/video/Splash_screen_animation.mp4',
    )
      ..initialize().then((_) {
        setState(() {});
      })
      ..setVolume(0.0);
    _playVideo();
  }

  void _playVideo() async {
    _controller.play();
    await Future.delayed(const Duration(seconds: 4));
    Get.toNamed(RoutesClass.welcomePage);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(
                  _controller,
                ),
              )
            : Container(),
      ),
    );
  }
}
