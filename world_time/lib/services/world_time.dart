import 'package:http/http.dart' ;
import 'dart:convert' ;
import 'package:intl/intl.dart';

class WorldTime {
   
   late String location;
   late String time; 
   late String flag; //url to an asset flag icon
   late String url;  //location url for api endpoint
   late bool isDatetime; //true or false ì datetime or not

   WorldTime({required this.location,required this.flag, required this.url});

  Future <void> getTime() async {

    try{

      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = (jsonDecode(response.body));
  
        // get properties from data
    
        String datetime = data['datetime'];
        String offset = data['utc_offset'].substring(1,2);

        DateTime now = DateTime.parse(datetime);
        now = now.add(Duration(hours: int.parse(offset)));
        
        isDatetime =  now.hour > 6 && now.hour < 20 ? true : false;
        //time = now.toString();
        time = DateFormat.jm().format(now);
        print(time);
    }
    catch(e){
      print('caught error: $e');
      time = 'could not get time data';
    }
  }

}