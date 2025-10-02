    import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
      const VideoPlayerScreen({super.key, this.videoUrl = ""});

      final String videoUrl;

      @override
      State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
    }

    class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
      late VideoPlayerController _controller;

      String get videoUrl => widget.videoUrl;

      @override
      void initState() {
        super.initState();
        _controller = VideoPlayerController.networkUrl(Uri.parse(videoUrl))
          ..initialize().then((_) {
            setState(() {
              // Ensure the first frame is shown and play the video
              _controller.play();
              _controller.setLooping(true);
            });
          });
      }

      @override
      void dispose() {
        _controller.dispose();
        super.dispose();
      }

      @override
      Widget build(BuildContext context) {
        return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  );

        // return Scaffold(
        //   body: Center(
        //     child: _controller.value.isInitialized
        //         ? AspectRatio(
        //             aspectRatio: _controller.value.aspectRatio,
        //             child: VideoPlayer(_controller),
        //           )
        //         : const CircularProgressIndicator(), // Show a loading indicator
        //   ),
        //   floatingActionButton: FloatingActionButton(
        //     onPressed: () {
        //       setState(() {
        //         _controller.value.isPlaying
        //             ? _controller.pause()
        //             : _controller.play();
        //       });
        //     },
        //     child: Icon(
        //       _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        //     ),
        //   ),
        // );
      }
    }