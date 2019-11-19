import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:guagua_news_redux/util/date_format_base.dart';

import 'action.dart';
import 'package:guagua_news_redux/http/qq_api/model/TencentNewsDetail.dart';

Widget buildView(TencentNewsDetail detail, Dispatch dispatch, ViewService viewService) {
  return InkWell(
    child: Padding(
      padding: EdgeInsets.all(10),
      child: IntrinsicHeight(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                        child: Text("${detail.title}",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ))),
                    Row(
                      children: <Widget>[
                        Text.rich(
                            TextSpan(text: "${detail.source}",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: "  ${getDataString(detail.publish_time)}"),
                                ])),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Image.network(
              detail.bimg,
              width: 160,
            )
          ],
        ),
      ),
    ),
    onTap: () => dispatch(ItemClickActionCreator.onClickAction(detail)),
  );;
}

getDataString(DateTime dateTime){
  return formatDate(dateTime ,[yyyy,'-',mm,'-',dd, " ", hh, ":", nn]);
}
