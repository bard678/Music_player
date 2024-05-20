import 'package:just_audio/just_audio.dart';

AudioPlayer player=AudioPlayer();

Future<void> playingSongs(String uri)async{
  try{
    await player.setAudioSource(AudioSource.uri(Uri.parse(uri)));
  }
  catch (e){
    throw Exception("Error playing song: $e");
  }
}

