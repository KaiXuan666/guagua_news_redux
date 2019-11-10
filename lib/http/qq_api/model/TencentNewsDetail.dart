class TencentNewsDetail extends Object {

  // 图片
  String bimg;

  // 简介
  String intro;
  String title;
  String source;
  DateTime publish_time;
  String url;

  TencentNewsDetail(this.bimg, this.intro, this.title,this.source, this.publish_time, this.url);

  factory TencentNewsDetail.fromJson(Map<String, dynamic> json){
    return TencentNewsDetail(
      json['bimg'] as String,
      json['intro'] as String,
      json['title'] as String,
      json['source'] as String,
      json['publish_time'] == null
          ? null
          : DateTime.parse(json['publish_time'] as String),
      json['url'] as String,
    );
  }

  Map<String, dynamic> toJson(){
    return <String, dynamic>{
      'bimg': bimg,
      'intro': intro,
      'title': title,
      'source': source,
      'publish_time': publish_time?.toIso8601String(),
      'url': url,
    };
  }

  @override
  String toString() {
    return 'TencentNewsDetail{bimg: $bimg, intro: $intro, title: $title, source: $source, publish_time: $publish_time, url: $url}';
  }

}