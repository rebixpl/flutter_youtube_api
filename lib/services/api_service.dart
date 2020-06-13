import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutteryoutubeapi/models/channel_model.dart';
import 'package:flutteryoutubeapi/models/video_model.dart';
import 'package:flutteryoutubeapi/utilities/keys.dart';

class APIService {
  APIService._instantiate();

  static final APIService instance = APIService._instantiate();

  final String _baseUrl = 'www.googleapis.com';
  String _nextPageToken = '';

  Future<Channel> fetchChannel({String channelId}) async {
    Map<String, String> parameters = {
      'part': 'snippet, contentDetails, statistics',
      'id': channelId,
      'key': API_KEY,
    };

    Uri uri = Uri.https(
      _baseUrl,
      '/youtube/v3/channels',
      parameters,
    );
  }
}
