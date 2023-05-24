import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Videoplayers extends StatefulWidget {
  const Videoplayers({Key? key}) : super(key: key);

  @override
  State<Videoplayers> createState() => _VideoplayersState();
}

class _VideoplayersState extends State<Videoplayers> {
  
  late VideoPlayerController _videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;
  
  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')..initialize().then((value) => setState((){}));
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _videoPlayerController,
      customVideoPlayerSettings: CustomVideoPlayerSettings(
        placeholderWidget: Center(
          child: CircularProgressIndicator(),
        ),
        // settingsButtonAvailable: true,
        // deviceOrientationsAfterFullscreen: [
        //   DeviceOrientation.portraitUp
        // ]
      ),
    );

    super.initState();
  }
  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(5.0),
      child: Scaffold(
          body: CustomVideoPlayer(customVideoPlayerController: _customVideoPlayerController),
      ),
    );
  }
}
