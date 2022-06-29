import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget{
  const VideoPlayer({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<StatefulWidget> createState() {
    return VideoPlayerState();
  }
  
}
class VideoPlayerState extends State<VideoPlayer>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12,right: 12,top: 5),
      child: Card(
        elevation: 5,
        color: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: ClipRRect(
         borderRadius: BorderRadius.circular(15),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.25,
            child: YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: widget.url,
                flags: const YoutubePlayerFlags(
                  autoPlay: false,
                  mute: false
                )
              )),
          ),

          ),
      ),
    );

  }
  
}