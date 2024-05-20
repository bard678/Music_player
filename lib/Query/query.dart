import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:webviewu/Models/album_data.dart';
import 'package:webviewu/Models/artist_data.dart';
import 'package:webviewu/Models/music_data.dart';
import 'package:webviewu/Models/playlist_data.dart';
import 'package:webviewu/main.dart';

final OnAudioQuery _audioQuery = OnAudioQuery();



Future<void> musicsFetching()async{
  List<SongModel> songs= await  _audioQuery.querySongs();

 for(SongModel e in songs) {
    musicData.add(
        MusicData(name: e.displayName,
        artist: e.artist,
        uri: e.uri,
        duration: e.duration,
        album: e.album,
        title: e.title,

        ));
                           }
}


Future<void> albumsFetching()async{
  List<AlbumModel> album=await _audioQuery.queryAlbums();
  for(AlbumModel e in album){
    albumData.add(AlbumData(
        album: e.album, artist: e.artist,
        id: e.id, numOfSongs: e.numOfSongs,
        artistId: e.artistId
    ));
  }
}


Future<void> playlistsFetching()async{
  List<PlaylistModel> playlist=await _audioQuery.queryPlaylists();
  for(PlaylistModel e in playlist){
    playlistData.add(PlaylistData(
        title: e.playlist,
        data: e.data, id: e.id, numOf: e.numOfSongs));
  }
}


Future<void> artistsFetching()async{
  List<ArtistModel> artist=await _audioQuery.queryArtists();
  for(ArtistModel e in artist){
    artistData.add(
        ArtistData(
            artist: e.artist, numOfAlbums: e.numberOfAlbums,
            numOfTracks: e.numberOfTracks, id: e.id));
  }

}
