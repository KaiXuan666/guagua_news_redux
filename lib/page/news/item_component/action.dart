import 'package:fish_redux/fish_redux.dart';
import 'package:guagua_news_redux/http/qq_api/model/TencentNewsDetail.dart';

enum ItemClickAction{ onClick }

class ItemClickActionCreator{
  static Action onClickAction(TencentNewsDetail detail){
    return Action(ItemClickAction.onClick, payload: detail);
  }
}