import 'dart:convert';

import 'package:http/http.dart' as http;

import '../class.dart';


Future<Album> fetchAlbum() async {
  final _bearerToken = "7O4SL_3Rs5tAtkNyQd6aUwa0QBitw3-iun2NuIJjfV0";
  final _accessKey = "_xWgoYI7CTNnxMi01B4XNiIe5drNxrJ-SZ9DJS0KKk8";

  final response = await http.get('https://api.unsplash.com/photos', headers: { "Accept-Version": "v1","Authorization": _bearerToken == null ? "Bearer $_bearerToken": "Client-ID $_accessKey"},);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}