import 'package:fish_redux/fish_redux.dart';
import 'package:guagua_news_redux/http/qq_api/model/TencentNewsDetail.dart';

class NewsListState implements Cloneable<NewsListState> {

  int loadState; // 0：加载完成，1：加载中，2：加载失败
  List<TencentNewsDetail> detailList;

  @override
  NewsListState clone() {
    return NewsListState()..detailList = detailList;
  }
}

NewsListState initState(Map<String, dynamic> args) {
  return NewsListState()..detailList = new List()
    ..loadState = 1;
}
