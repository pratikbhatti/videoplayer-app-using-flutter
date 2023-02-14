import 'package:demo23/screen/provider/videoPlayerProvider.dart';
import 'package:demo23/screen/view/videoPlayerScreen.dart';
import 'package:demo23/screen/view/videoView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => VideoPlayerProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => VideoPlayerPage(),
          '/videoView': (context) => VideoView(),
        },
      ),
    ),
  );
}
