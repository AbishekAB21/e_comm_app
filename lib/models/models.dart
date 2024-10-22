class Products {
  String name;
  String desc;
  String price;
  String imageUrl;

  Products(
      {required this.name,
      required this.desc,
      required this.price,
      required this.imageUrl});
}


// Static list of products
final List<Products> productList = [
  Products(
    name: 'Iphone 16 Pro Max',
    desc: 'The latest iPhone with advanced features',
    price: '₹120,000',
    imageUrl: 'assets/1.jpg',
  ),
  Products(
    name: 'Samsung Galaxy S24 Ultra',
    desc: 'Flagship phone from Samsung',
    price: '₹119,000',
    imageUrl: 'assets/2.jpg',
  ),
  
];