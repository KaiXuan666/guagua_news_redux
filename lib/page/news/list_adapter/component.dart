import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NewsListComponent extends Component<NewsListState> {
  NewsListComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NewsListState>(
                adapter: null,
                slots: <String, Dependent<NewsListState>>{
                }),);

}
