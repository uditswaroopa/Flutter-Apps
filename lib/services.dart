import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime{
  String time;
  String location;
  String url;
  String flag;

  WorldTime({this.location,this.url,this.flag});

  Future<void> getTime() async{

    try{
      Response r = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(r.body);
      String datetime = data['datetime'];
      String hour = data['utc_offset'].substring(1,3);

      String minute = data['utc_offset'].substring(4,6);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(hour),minutes: int.parse(minute)));

      time = DateFormat.jm().format(now);
    }
    catch(e){
      print('Exception Caught $e');
      time = 'Could not get Time for this location!';
    }
  }
}