// import 'dart:async';
// import 'dart:io';
// import 'dart:math';

// import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';
// import 'package:musicplayer/database/database_client.dart';
// import 'package:musicplayer/pages/now_playing.dart';
// import 'package:musicplayer/util/AAppBar.dart';
// import 'package:musicplayer/util/lastplay.dart';
import 'package:flutter/cupertino.dart';

//   // final int mode;
//   // final Orientation orientation;

//   // mode =1=>recent, 2=>top, 3=>fav
//   // ListSongs(this.mode, this.orientation);


//   @override
//   State<StatefulWidget> createState() {
//     return new _ListSong();
//   }
// }

// class _ListSong extends State<ListSongs> {
//   // List<Song> songs, allSongs;
//   bool isLoading = true;

  // dynamic getImage(Song song) {
  //   return song.albumArt == null
  //       ? null
  //       : new File.fromUri(Uri.parse(song.albumArt));
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   initSongs();
  // }

  // void initSongs() async {
  //   allSongs = await widget.db.fetchSongs();
  //   switch (widget.mode) {
  //     case 1:
  //       songs = await widget.db.fetchRecentSong();
  //       break;
  //     case 2:
  //       songs = await widget.db.fetchTopSong();
  //       break;
  //     case 3:
  //       songs = await widget.db.fetchFavSong();
  //       break;
  //     default:
  //       break;
  //   }
  //   setState(() {
  //     isLoading = false;
  //   });
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  // String getTitle(int mode) {
  //   switch (mode) {
  //     case 1:
  //       return "Recently played";
  //       break;
  //     case 2:
  //       return "Top tracks";
  //       break;
  //     case 3:
  //       return "Favourites";
  //       break;
  //     default:
  //       return null;
  //   }
  // }

  // Future<bool> isFav(song) async {
  //   if (await widget.db.isfav(song) == 0)
  //     return true;
  //   else
  //     return false;
  // }

  // void _modelBottomSheet() {
  //   List<bool> isFavorite = new List(allSongs.length);
  //   for (int m = 0; m < allSongs.length; m++) isFavorite[m] = false;
  //   bool isFavoriteX;
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (builder) {
  //         return Container(
  //           decoration: ShapeDecoration(
  //               shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.only(
  //                       topLeft: Radius.circular(6.0),
  //                       topRight: Radius.circular(6.0))),
  //               color: Color(0xFFFAFAFA)),
  //           child: Scrollbar(
  //             child: ListView.builder(
  //               padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0),
  //               itemCount: allSongs.length,
  //               physics: BouncingScrollPhysics(),
  //               itemBuilder: (context, i) {
  //                 isFavoriteX = true;
  //                 return ListTile(
  //                   title: Text(allSongs[i].title,
  //                       maxLines: 1,
  //                       style: new TextStyle(
  //                         color: Colors.black,
  //                         fontSize: 16.0,
  //                       )),
  //                   leading: allSongs[i].albumArt != null
  //                       ? Image.file(
  //                           getImage(allSongs[i]),
  //                           width: 55.0,
  //                           height: 55.0,
  //                         )
  //                       : Icon(Icons.music_note),
  //                   subtitle: new Text(
  //                     allSongs[i].artist,
  //                     maxLines: 1,
  //                     style: new TextStyle(fontSize: 12.0, color: Colors.grey),
  //                   ),
  //                   trailing: RawMaterialButton(
  //                       shape: CircleBorder(),
  //                       child: !isFavorite[i] || isFavoriteX
  //                           ? Icon(Icons.add)
  //                           : Icon(Icons.remove),
  //                       fillColor: Color(0xFFefece8),
  //                       onPressed: () async {
  //                         setState(() {
  //                           isFavorite[i] = true;
  //                           isFavoriteX = false;
  //                         });
  //                         await widget.db.favSong(allSongs[i]);
  //                       }),
  //                   onTap: () {
  //                     MyQueue.songs = allSongs;
  //                     Navigator.of(context).push(new MaterialPageRoute(
  //                         builder: (context) =>
  //                             new NowPlaying(widget.db, MyQueue.songs, i, 0)));
  //                   },
  //                 );
  //               },
  //             ),
  //           ),
  //         );
  //       });
  // }

  // GlobalKey<ScaffoldState> scaffoldState = new GlobalKey();

// new Container(
//         child: isLoading
//             ? new Center(
//                 child: new CircularProgressIndicator(),
//               )
//             : songs.length != 0
//                 ? 

class ListSongs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // initSongs();
    return new Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.black, 
        elevation: 0, 
        iconTheme: IconThemeData(color: Colors.black), 
        title: Text("Stores"),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (context, i) => new Column(
          children: <Widget>[
            ListTile(
              leading: Hero(
                tag: 123,
                child: Image.asset("assets/logos/ratnadeep.webp", width: 55.0,height: 55.0,),
              ),
              title: Text("Ratnadeep Supermarket",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 16.0, color: Colors.black)),
              subtitle: Text(
                "Service Timings: 7:00AM - 4:00PM",
                maxLines: 1,
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
              // trailing: widget.mode == 2
              //     ? new Text(
              //         (i + 1).toString(),
              //         style: new TextStyle(
              //             fontSize: 12.0, color: Colors.grey),
              //       )
              //     : new Text(
              //         new Duration(milliseconds: songs[i].duration)
              //             .toString()
              //             .split('.')
              //             .first
              //             .substring(3, 7),
              //         style: new TextStyle(
              //             fontSize: 12.0, color: Colors.grey)),
              // onTap: () {
                //TODO -> Move to store page
                // Navigator.of(context).pushNamed('/store');
                // MyQueue.songs = songs;
                // Navigator.of(context).push(new MaterialPageRoute(
                //     builder: (context) => CategoryDropMenu()
                //     ));
              // },
            ),
            ListTile(
              leading: Hero(
                tag: 123,
                child: Image.asset("assets/logos/vijetha.jpg", width: 55.0,height: 55.0,),
              ),
              title: Text("Vijetha Supermarket",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 16.0, color: Colors.black)),
              subtitle: Text(
                "Service Timings: 7:00AM - 4:00PM",
                maxLines: 1,
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
            ),
            ListTile(
              leading: Hero(
                tag: 123,
                child: Image.asset("assets/logos/barista_logo.jpg", width: 55.0,height: 55.0,),
              ),
              title: Text("Barista",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 16.0, color: Colors.black)),
              subtitle: Text(
                "Service Timings: 7:00AM - 6:59AM",
                maxLines: 1,
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
            ),
            ListTile(
              leading: Hero(
                tag: 123,
                child: Image.asset("assets/logos/reliance.jpg", width: 55.0,height: 55.0,),
              ),
              title: Text("Reliance Fresh",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 16.0, color: Colors.black)),
              subtitle: Text(
                "Service Timings: 7:00AM - 6:59AM",
                maxLines: 1,
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
            ),
          ],
        ),
      )
                // : Center(
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: <Widget>[
                //         Text(
                //           "Nothing here :(",
                //           style: TextStyle(
                //               fontSize: 30.0, fontWeight: q.w600),
                //         ),
                //         Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                //         OutlineButton(
                //           child: Text("Add Songs".toUpperCase()),
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(8.0)),
                //           onPressed: _modelBottomSheet,
                //           color: Colors.blueGrey.shade500,
                //           highlightedBorderColor: Color(0xFF373737),
                //           borderSide:
                //               BorderSide(width: 2.0, color: Colors.blueGrey),
                //         )
                //       ],
                //     ),
                //   ),
      );
    //   floatingActionButton: songs != null
    //       ? FloatingActionButton(
    //           onPressed: () {
    //             if (widget.mode != 3) {
    //               MyQueue.songs = songs;
    //               Navigator.of(context).push(new MaterialPageRoute(
    //                   builder: (context) => new NowPlaying(
    //                       widget.db,
    //                       MyQueue.songs,
    //                       new Random().nextInt(songs.length),
    //                       0)));
    //             } else
    //               _modelBottomSheet();
    //           },
    //           backgroundColor: Colors.white,
    //           foregroundColor: Colors.blueGrey,
    //           child: widget.mode == 3
    //               ? Icon(Icons.add)
    //               : Icon(CupertinoIcons.shuffle_thick),
    //         )
    //       : null,
    // );
  }
}