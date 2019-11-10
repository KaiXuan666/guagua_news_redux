import 'package:dio/dio.dart';
import 'qq_api/QQApi.dart';

class MyDio{

  factory MyDio() => _getInstance();
  static MyDio get instance => _getInstance();
  static MyDio _instance;


  Dio _dio;
  QQApi qqApi;

  MyDio._init(){
    _dio = new Dio();
    qqApi = new QQApi();
  }
  static _getInstance() {
    if(_instance == null){
      _instance = new MyDio._init();
    }
    return _instance;
  }

  Future<Response<T>> get<T>(String path,{Map<String, dynamic> queryParameters}){
    return _dio.get(path, queryParameters: queryParameters);
  }

}
