import 'package:chewie/chewie.dart';
import 'package:demo23/screen/provider/videoPlayerProvider.dart';
import 'package:demo23/utility/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VideoView extends StatefulWidget {
  const VideoView({super.key});

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  VideoPlayerProvider? providerTrue;
  VideoPlayerProvider? providerFalse;
  @override
  void initState() {
    super.initState();
    Provider.of<VideoPlayerProvider>(context, listen: false).loadVideo();
  }

  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<VideoPlayerProvider>(context, listen: true);
    providerFalse = Provider.of<VideoPlayerProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.black,
        body: Chewie(
          controller: providerTrue!.chewieController!,
        ),
      ),
    );
  }

  @override
  void dispose() {
    providerFalse!.chewieController!.pause();
    super.dispose();
  }
}
