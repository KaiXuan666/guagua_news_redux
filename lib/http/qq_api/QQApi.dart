import '../MyDio.dart';
import 'package:rxdart/rxdart.dart';
import 'model/TencentNewsListResponse.dart';
import 'package:dio/dio.dart';

class QQApi{

  static const typeMap = {
    "热点" : "news",
    "国际" : "world",
    "娱乐" : "twentyf",
    "社会" : "msh",
    "数码" : "tech",
    "科普" : "kepu",
    "游戏" : "games",
    "房产" : "house",
    "健康" : "health",
  };

  Observable<TencentNewsListResponse> getNewsList(){
    var future = MyDio.instance
        .get<Map<String, dynamic>>("https://pacaio.match.qq.com/irs/rcd?cid=56&ext=news&token=c786875b8e04da17b24ea5e332745e0f&num=20&expIds=20190106A13PFT%7C20190108A04MLS&page=1");
    return Observable.fromFuture(future)
    .map((convert)=> TencentNewsListResponse.fromJson(convert.data));
  }
}