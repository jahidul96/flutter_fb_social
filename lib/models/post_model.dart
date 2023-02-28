class PostModel {
  final name;
  final profileimg;
  final postedAt;
  final caption;
  final likes;
  final commnets;
  final share;
  final postImg;

  PostModel(
      {required this.caption,
      required this.name,
      required this.profileimg,
      required this.postedAt,
      required this.commnets,
      required this.likes,
      required this.postImg,
      required this.share});
}
