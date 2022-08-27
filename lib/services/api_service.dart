
import 'package:appnews/services/api.dart';
import 'package:dio/dio.dart';

class APIService {
  final API api = API();
  final Dio dio = Dio();

  Future<Response> getData(String path, {Map<String,dynamic>?params}) async{
    String _url=api.baseUrl+path;

    Map<String, dynamic> query = {
      'api_key': api.apikey,
      'languages':'en,-de',
      
      
    };
      if (params != null) {
      query.addAll(params);
    }
     final response = await dio.get(_url, queryParameters: query);
    //verification de la requete
    if (response.statusCode == 200) {
      return response;
    } else {
      throw response;
    }

  }
  
}