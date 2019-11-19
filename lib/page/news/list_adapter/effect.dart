import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<NewsListState> buildEffect() {
  return combineEffects(<Object, Effect<NewsListState>>{
    Lifecycle.initState : _init,
    NewsListAction.action: _onAction,
  });
}

void _init(Action action, Context<NewsListState> ctx){

}

void _onAction(Action action, Context<NewsListState> ctx) {
}
