import 'dart:convert';

import 'package:demo_api_flutter/model/music/list_repo.dart';
import 'package:dio/dio.dart';

const MUSIC_URL =
    'https://storage.googleapis.com/uamp/catalog.json?gidzl=e7_DGHEtPKcePyb24wbaJA5doKG4e6L8jsx1HGgWPHpZQPqGNg4n7xTlcnSFfZKOjpcR4MQB_fqy6BDWIG';

class ListMusicRepo {
  Future<ListMusicModel?> fetchMusic() async {
    final dio = Dio();
    try {
      final response = await dio
          .get<String>(MUSIC_URL); // Specify the expected response type
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = jsonDecode(response.data!);
        return ListMusicModel.fromJson(jsonData);
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
