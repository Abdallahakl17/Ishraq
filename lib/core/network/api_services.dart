import 'dart:developer';

import 'package:dio/dio.dart';

class   NetworkApiServices {
    
   final Dio dio = Dio();
     void getApi() async {
       final response = await dio.get('https://mp3quran.net/api/v3/radios?language=ar');
        log(response.data  .toString());
    }
}