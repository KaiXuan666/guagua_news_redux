import 'package:fish_redux/fish_redux.dart';
import 'package:guagua_news_redux/http/qq_api/model/TencentNewsDetail.dart';
import 'action.dart';


Effect<TencentNewsDetail> buildEffect() {
  return combineEffects(<Object, Effect<TencentNewsDetail>>{
    ItemClickAction.onClick : _onClick,
  });
}

void _onClick(Action action, Context<TencentNewsDetail> ctx) {

}
