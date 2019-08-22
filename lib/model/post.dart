class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl
  });
  final String title;
  final String author;
  final String imageUrl;
}
final List<Post> posts = [
  Post(
    title: '江南烧酒',
    author: 'AiCo',
    imageUrl: 'http://pic.netbian.com/uploads/allimg/180803/084010-15332568109b5b.jpg'
  ),
  Post(
      title: '樱花',
      author: '茶色',
      imageUrl: 'http://pic.netbian.com/uploads/allimg/190323/235101-15533562612e76.jpg'
  ),
  Post(
      title: '雪',
      author: 'Fate',
      imageUrl: 'http://pic.netbian.com/uploads/allimg/190705/232259-1562340179927b.jpg'
  ),
  Post(
      title: '中国风',
      author: '水蓝',
      imageUrl: 'http://pic.netbian.com/uploads/allimg/190706/175121-1562406681af3c.jpg'
  )
];