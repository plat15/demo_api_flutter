import 'package:json_annotation/json_annotation.dart';

part 'repo.g.dart';

@JsonSerializable()
class MusicModel {
  @JsonKey(name: 'id', includeIfNull: false)
  String? id;

  @JsonKey(name: 'title', includeIfNull: false)
  String? title;

  @JsonKey(name: 'album', includeIfNull: false)
  String? album;

  @JsonKey(name: 'artist', includeIfNull: false)
  String? artist;

  @JsonKey(name: 'genre', includeIfNull: false)
  String? genre;

  @JsonKey(name: 'source', includeIfNull: false)
  String? source;

  @JsonKey(name: 'image', includeIfNull: false)
  String? image;

  @JsonKey(name: 'trackNumber', includeIfNull: false)
  int? trackNumber;

  @JsonKey(name: 'totalTrackCount', includeIfNull: false)
  int? totalTrackCount;

  @JsonKey(name: 'duration', includeIfNull: false)
  int? duration;

  @JsonKey(name: 'site', includeIfNull: false)
  String? site;

  MusicModel(
      {this.id,
      this.title,
      this.album,
      this.artist,
      this.genre,
      this.source,
      this.image,
      this.trackNumber,
      this.totalTrackCount,
      this.duration,
      this.site});

  factory MusicModel.fromJson(Map<String, dynamic> json) =>
      _$MusicModelFromJson(json);

  Map<String, dynamic> toJson() => _$MusicModelToJson(this);
}
