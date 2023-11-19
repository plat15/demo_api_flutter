import 'package:demo_api_flutter/model/music/repo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_repo.g.dart';

@JsonSerializable()
class ListMusicModel {
  @JsonKey(name: 'music', includeIfNull: false)
  List<MusicModel>? music;

  ListMusicModel({
    this.music,
  });

  factory ListMusicModel.fromJson(Map<String, dynamic> json) =>
      _$ListMusicModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListMusicModelToJson(this);
}
