import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeExampleScreen extends StatefulWidget {
  const YoutubeExampleScreen({super.key});

  @override
  _YoutubeExampleScreenState createState() => _YoutubeExampleScreenState();
}

class _YoutubeExampleScreenState extends State<YoutubeExampleScreen> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    String? videoId = YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=71IegqJVV0M&t=1433s");

    controller = YoutubePlayerController(
      initialVideoId: videoId!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YouTube Player Flutter'),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: controller,
          showVideoProgressIndicator: true,
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
