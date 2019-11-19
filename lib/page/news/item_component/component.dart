import 'package:fish_redux/fish_redux.dart';

import 'package:guagua_news_redux/http/qq_api/model/TencentNewsDetail.dart';
import 'effect.dart';
import 'view.dart';

class ItemComponentComponent extends Component<TencentNewsDetail> {
  ItemComponentComponent()
      : super(
            effect: buildEffect(),
            view: buildView,
            dependencies: Dependencies<TencentNewsDetail>(
                adapter: null,
                slots: <String, Dependent<TencentNewsDetail>>{
                }),);

}
