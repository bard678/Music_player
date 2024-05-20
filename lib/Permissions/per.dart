import 'package:permission_handler/permission_handler.dart';
import 'package:webviewu/Query/query.dart';

bool isLoading=true;

Future<bool> requestPermissions() async {
  var status = await Permission.storage.status;
  if (!status.isGranted) {
    status = await Permission.storage.request();
  }
  else{
    musicsFetching();
  }
  return status.isGranted;
}
