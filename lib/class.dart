class Album {
final List id;

  Album({this.id});



  factory Album.fromJson(List<dynamic> json) {

    return Album();
  }
}