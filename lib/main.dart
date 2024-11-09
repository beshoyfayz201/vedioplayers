import 'package:flutter/material.dart';
import 'package:vedioplayers/chewie/chewie_example.dart';
import 'package:vedioplayers/flick_video/flick_example.dart';
import 'package:vedioplayers/vedio_player/vedio_player_example.dart';
import 'package:vedioplayers/youtube_player/youtube_example.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Roboto',
      primarySwatch: Colors.teal,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeScreen(),
      '/video_player': (context) => const VideoPlayerScreen(),
      '/flick': (context) => const FlickExample(),
      '/ChewieScreen': (context) => const ChewieScreen(),
      '/YoutubeExampleScreen': (context) => const YoutubeExampleScreen(),
    },
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00C9FF), Color(0xFF92FE9D)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              NavigationCard(
                label: 'vedio player',
                icon: Icons.looks_one,
                onTap: () {
                  Navigator.pushNamed(context, '/video_player');
                },
              ),
              NavigationCard(
                label: 'flick player',
                icon: Icons.looks_two,
                onTap: () {
                  Navigator.pushNamed(context, '/flick');
                },
              ),
              NavigationCard(
                label: 'chewie player',
                icon: Icons.looks_3,
                onTap: () {
                  Navigator.pushNamed(context, '/ChewieScreen');
                },
              ),
              NavigationCard(
                label: 'youtube player',
                icon: Icons.looks_4,
                onTap: () {
                  Navigator.pushNamed(context, '/YoutubeExampleScreen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const NavigationCard({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF11998E), Color(0xFF38EF7D)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
