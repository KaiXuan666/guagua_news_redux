import 'TencentNewsDetail.dart';


class TencentNewsListResponse extends Object {

  String msg;
  List<TencentNewsDetail> data;

  TencentNewsListResponse(this.msg, this.data);


  factory TencentNewsListResponse.fromJson(Map<String, dynamic> json){
    return TencentNewsListResponse(
      json['msg'] as String,
      (json['data'] as List)
          ?.map((e) => e == null
          ? null
          : TencentNewsDetail.fromJson(e as Map<String, dynamic>))
          ?.toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'msg': msg,
      'data': data,
    };
  }

  @override
  String toString() {
    return 'TencentNewsListResponse{msg: $msg, data: $data}';
  }
}