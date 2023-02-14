// ============= video play ============
// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:media_booster/Screens/VideoScreen/provider/VideoProvider.dart';
// import 'package:provider/provider.dart';

// class CricketPage extends StatefulWidget {
//   const CricketPage({Key? key}) : super(key: key);

//   @override
//   State<CricketPage> createState() => _CricketPageState();
// }

// class _CricketPageState extends State<CricketPage> {
//   VideoProvider? ProviderTrue;
//   VideoProvider? ProviderFalse;
//   @override
//   void initState() {
//     super.initState();
//     Provider.of<VideoProvider>(context,listen: false).loadVideo();
//   }
//   @override
//   Widget build(BuildContext context) {
//     ProviderTrue = Provider.of<VideoProvider>(context,listen: true);
//     ProviderFalse = Provider.of<VideoProvider>(context,listen: false);
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           leading: IconButton(
//             onPressed: (){
//               Navigator.pop(context,'/');
//               ProviderFalse!.videoPlayerController!.pause();
//             },
//             icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
//           ),
//           title: Text("${ProviderTrue!.v1!.tital}",style: TextStyle(color: Colors.white),),
//           backgroundColor: Colors.black,
//         ),
//         backgroundColor: Colors.black,
//         body: Chewie(controller:  ProviderTrue!.loadVideo()),
//       ),
//     );
//   }
// }

// ============ provider =========
// import 'package:chewie/chewie.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:media_booster/Screens/VideoScreen/modal/VideoModal.dart';
// import 'package:video_player/video_player.dart';

// class VideoProvider extends ChangeNotifier
// {
//   VideoPlayerController? videoPlayerController;
//   ChewieController? chewieController;
//   List videoList = [
//     "asset/video/kohli.mp4",
//     "asset/video/rock.mp4",
//     "asset/video/meradil.mp4",
//     "asset/video/jethalal.mp4",
//   ];
//   List<VideoModal> data = [
//     VideoModal(image: "asset/image/cricket.jpg",tital: "Cricket Video",video: "asset/video/kohli.mp4"),
//     VideoModal(image: "asset/image/fight.jpg",tital: "Fight Video",video: "asset/video/rock.mp4"),
//     VideoModal(image: "asset/image/song.jpeg",tital: "Song Video",video: "asset/video/meradil.mp4"),
//     VideoModal(image: "asset/image/funny.png",tital: "Funny Video",video: "asset/video/jethalal.mp4"),
//   ];
//   //String? videopath = "asset/video/kohli.mp4";
//   VideoModal? v1;
//   int? index;
//   void changepath(VideoModal? vv,ind)
//   {
//     v1=vv;
//     index=ind;
//     notifyListeners();
//   }
//   ChewieController loadVideo()
//   {
//     videoPlayerController = VideoPlayerController.asset("${videoList[index!]}")
//     ..initialize();
//     return ChewieController(videoPlayerController: videoPlayerController!,autoPlay: true);
//   }
// }