import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webviewu/Permissions/per.dart';
import 'package:webviewu/Themes/purple.dart';

import 'Models/album_data.dart';
import 'Models/artist_data.dart';
import 'Models/music_data.dart';
import 'Models/playlist_data.dart';
import 'Query/query.dart';

List<MusicData> musicData=[];
List<AlbumData> albumData=[];
List<PlaylistData> playlistData=[];
List<ArtistData>  artistData=[];
void main(){

  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: purpleTheme,
        home:  HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool storageIsGranted=false;
  @override
  void initState(){
    super.initState();

  checkPer();

  }

  void checkPer()async{

    storageIsGranted=await requestPermissions();
    setState((){});
    if(storageIsGranted){

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Storage permission is granted")));
    try{
      musicsFetching();
    }catch(e){
     throw Exception("failed :$e");
    }
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Storage permission is dended")));

    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        title:Text("Music Player",
          style: TextStyle(fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),)


      ),
      body: ListView.builder(
           itemCount: musicData.length,
          itemBuilder: (context,index){
                  return ListTile(
                    title: Text(musicData[index].title),
                    subtitle: Text(musicData[index].name),

                  );
            }),
    );
  }
}

