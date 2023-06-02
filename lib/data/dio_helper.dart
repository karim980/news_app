import 'package:dio/dio.dart';

//https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=a99b8ccb05a648c49f42d31e0561b562

class DioHelper{

static Dio? dio;

static init(){
  dio=Dio(
    BaseOptions(
      baseUrl: 'https://newsapi.org/',
      receiveDataWhenStatusError: true
    )
  );

}

static Future<Response> getData({
  required String url,
  required Map<String,dynamic> query,

})async{
 return await dio!.get(url,queryParameters: query,);
}
}