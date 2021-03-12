class Video{
  String _id;
  String _title, _overview;
  //_poster;
  int _seasonCount;
  String _slug;
  String _img;
  String _typeVideo;

  Video(this._id , this._title, this._slug, this._img, this._overview, this._seasonCount, this._typeVideo);

  String get id => _id;
  String get title => _title;
  String get overview => _overview;
  //String get poster => _poster;
  int get seasonCount => _seasonCount;
  String get slug => _slug;
  String get img => _img;
  String get typeVideo => _typeVideo;

  void set id(String value) => _id = value;
  void set title(String value) => _title = value;
  void set overview(String value) => _overview = value;
  //void set poster(String value) => _poster = value;
  void set seasonCount(int value) => _seasonCount = value;
  void set slug(String value) => _slug = value;
  void set img(String value) => _img = value;
  void set typeVideo(String value) => _typeVideo = value;



}