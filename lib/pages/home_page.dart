import 'package:flutter/material.dart';
import 'package:roulette_netflix/services/video_services.dart';

class HomePage extends StatelessWidget {
  VideoService _videoService = VideoService();
  @override
  Widget build(BuildContext context) {
    _videoService.getVideos();
    //print(_netflixService);

    return Container(
      
      padding: EdgeInsets.all(10),
      child: FutureBuilder<dynamic>(
          future: _videoService.getVideos(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
             return 
              Column(children: <Widget>[
                  Text("\n Titre : " + snapshot.data.title),
                  Text("\n Slug : " + snapshot.data.slug + "\n"),
                  Text("\n Resumé : " + snapshot.data.overview + "\n"),
                  Text("\n" + snapshot.data.typeVideo + "\n"),
                  Image.network(snapshot.data.img),
                ]);
            }
            else{
              return CircularProgressIndicator();
            }
          }
        ),
    );
  }
}
