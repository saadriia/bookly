 // م  ملف لكتابة دالةApi ه
 import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService(this.dio);
  //Future , = some thing need time to get it 
//async = تزامن البيانات
// await= انتظار البيانات
//end point = url
//async = يستقبل البيانات 
   Future<Map<String, dynamic>>
    get({required String endPoint}) async {
    var response = await dio.get('$_baseUrl$endPoint');
    return response.data;

  }
}
