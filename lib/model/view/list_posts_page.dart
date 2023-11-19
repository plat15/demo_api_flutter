import 'package:demo_api_flutter/model/controller/music_vm.dart';
import 'package:demo_api_flutter/model/music/post_img_item.dart';
import 'package:demo_api_flutter/model/music/repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListMusicPage extends StatefulWidget {
  const ListMusicPage({Key? key}) : super(key: key);

  @override
  _ListPostsPageState createState() => _ListPostsPageState();
}

class _ListPostsPageState extends State<ListMusicPage> {
  final _listPostsPageState = ListMusicsRxDartBloc();

  @override
  void initState() {
    super.initState();
    _listPostsPageState.getMusic();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: <Widget>[
            const SliverAppBar(
              title: Text(
                'Homefeed',
                style: TextStyle(color: Colors.black),
              ),
              snap: true,
              floating: true,
              elevation: 1,
              forceElevated: true,
              backgroundColor: Colors.white,
            ),
            CupertinoSliverRefreshControl(
              onRefresh: _listPostsPageState.getMusic,
            ),
            StreamBuilder<List<MusicModel>?>(
                stream: _listPostsPageState.postsStream,
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return const SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }

                  if (snapshot.hasError) {
                    return const SliverFillRemaining(
                      child: Center(
                        child: Text('Something went wrong'),
                      ),
                    );
                  }

                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final post = snapshot.data![index];
                        return Container(
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.only(bottom: 20.0),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '${post.title}',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                ),
                                maxLines: 2,
                              ),
                              PostImgItem(
                                url: post.image!,
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height / 2,
                                onTap: () => {},
                              )
                            ],
                          ),
                        );
                      },
                      childCount: snapshot.data?.length ?? 0,
                    ),
                  );
                }),
            const SliverPadding(padding: EdgeInsets.only(bottom: 120)),
          ],
        ),
        Positioned(
            right: 15,
            bottom: 15,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100.0)),
              padding: EdgeInsets.all(10),
              child: IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ))
      ],
    ));
  }
}
