// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListMusicModel _$ListMusicModelFromJson(Map<String, dynamic> json) =>
    ListMusicModel(
      music: (json['music'] as List<dynamic>?)
          ?.map((e) => MusicModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListMusicModelToJson(ListMusicModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('music', instance.music);
  return val;
}
