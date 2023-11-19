import 'dart:async';

import 'package:demo_api_flutter/model/controller/call_api.dart';
import 'package:demo_api_flutter/model/music/repo.dart';
import 'package:demo_api_flutter/providers/bloc_provider.dart';
import 'package:rxdart/rxdart.dart';

class ListMusicsRxDartBloc extends BlocBase {
  final _postsCtrl = BehaviorSubject<List<MusicModel>?>();
  Stream<List<MusicModel>?> get postsStream => _postsCtrl.stream;
  List<MusicModel>? get postsValue => _postsCtrl.stream.value;

  Future<void> getMusic() async {
    try {
      final res = await ListMusicRepo().fetchMusic();
      if (res != null) {
        _postsCtrl.sink.add(res.music);
      }
    } catch (e) {
      _postsCtrl.sink.addError('Cannot fetch list posts right now!!!');
    }
  }

  @override
  void dispose() {
    _postsCtrl.close();
  }
}
