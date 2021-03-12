import 'dart:convert';
import 'package:roulette_netflix/models/video.dart';
import 'package:http/http.dart' as http;

class VideoService{
  // Promise
  Future getVideos() async{
    final response = 
      await http.get('https://api.reelgood.com/v3.0/content/random?sources=netflix');
      if(response.statusCode == 200) {
        dynamic data = json.decode(response.body);
           // print(data);
          if(data['season_count'] == 0){
            data['type']= 'Affiche du film :';
            return Video(data['id'], data['title'], data['slug'], 'https://img.reelgood.com/content/movie/${data['id']}/poster-780.jpg', data['overview'], data['season_count'], data['type']);
          }else {
            data['type']= 'Nombre de saison : ${data['season_count']}';
            return Video(data['id'], data['title'], data['slug'], 'https://img.reelgood.com/content/show/${data['id']}/poster-780.jpg', data['overview'], data['season_count'], data['type']);
        }
      }
  }
}