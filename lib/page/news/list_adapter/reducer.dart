import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NewsListState> buildReducer() {
  return asReducer(
    <Object, Reducer<NewsListState>>{
      NewsListAction.action: _onAction,
    },
  );
}

NewsListState _onAction(NewsListState state, Action action) {
  final NewsListState newState = state.clone();
  return newState;
}
