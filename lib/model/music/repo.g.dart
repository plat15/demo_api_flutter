// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MusicModel _$MusicModelFromJson(Map<String, dynamic> json) => MusicModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      album: json['album'] as String?,
      artist: json['artist'] as String?,
      genre: json['genre'] as String?,
      source: json['source'] as String?,
      image: json['image'] as String?,
      trackNumber: json['trackNumber'] as int?,
      totalTrackCount: json['totalTrackCount'] as int?,
      duration: json['duration'] as int?,
      site: json['site'] as String?,
    );

Map<String, dynamic> _$MusicModelToJson(MusicModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('album', instance.album);
  writeNotNull('artist', instance.artist);
  writeNotNull('genre', instance.genre);
  writeNotNull('source', instance.source);
  writeNotNull('image', instance.image);
  writeNotNull('trackNumber', instance.trackNumber);
  writeNotNull('totalTrackCount', instance.totalTrackCount);
  writeNotNull('duration', instance.duration);
  writeNotNull('site', instance.site);
  return val;
}
