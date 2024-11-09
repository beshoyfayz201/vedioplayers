import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewieScreen extends StatefulWidget {
  const ChewieScreen({super.key});

  @override
  State<ChewieScreen> createState() => _ChewieScreenState();
}

class _ChewieScreenState extends State<ChewieScreen> {
  late ChewieController chewieController;
  @override
  void initState() async {
    final videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'));

    await videoPlayerController.initialize();

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
    );
    super.initState();
  }

  onInit() {}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Chewie(controller: chewieController),
    );
  }
}
