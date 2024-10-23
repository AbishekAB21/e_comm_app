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
    name: 'Iphone 16',
    desc: 'The iPhone 16 base variant features a sleek design, a stunning 6.1-inch Super Retina XDR display, and the powerful A17 Bionic chip for seamless performance. Equipped with a dual 12MP camera system, it delivers sharp photos and 4K video recording. Enjoy enhanced battery life and 5G connectivity for an unparalleled user experience.',
    price: '₹120,000',
    imageUrl: 'assets/1.jpg',
  ),
  Products(
    name: 'Samsung Galaxy S24 Ultra',
    desc: 'The Samsung Galaxy S24 Ultra boasts a massive 6.8-inch Dynamic AMOLED 2X display and a cutting-edge Snapdragon 8 Gen 3 processor for unparalleled speed. Its quad-camera system, including a 200MP main sensor, captures stunning photos and 8K video. With a 5000mAh battery and S Pen support, it’s designed for power users and creatives.',
    price: '₹119,000',
    imageUrl: 'assets/2.jpg',
  ),
  Products(
    name: 'Google Pixel 9 Pro',
    desc: 'The Google Pixel 9 Pro features a stunning 6.7-inch OLED display with a smooth 120Hz refresh rate and is powered by the Google Tensor G3 chip for AI-enhanced performance. Its triple-camera system, including a 50MP main sensor, excels in computational photography and 5x optical zoom. With a 5000mAh battery and clean Android experience, it\'s designed for photography enthusiasts and power users.',
    price: '₹124,000',
    imageUrl: 'assets/3.jpg',
  ),
  Products(
    name: 'Oneplus 12',
    desc: 'The OnePlus 12 features a 6.7-inch Fluid AMOLED display with a 120Hz refresh rate, powered by the Snapdragon 8 Gen 3 processor for fast, smooth performance. Its triple-camera setup includes a 50MP primary sensor, delivering impressive low-light photography and 4K video recording. A 5000mAh battery with 100W fast charging ensures all-day use with minimal downtime.',
    price: '₹65,000',
    imageUrl: 'assets/4.jpg',
  ),
  Products(
    name: 'Nothing Phone 2',
    desc: 'The Nothing Phone 2 brings a refreshing design with its transparent back and 6.7-inch OLED display, offering a unique visual experience. It’s powered by the Snapdragon 8+ Gen 1 chipset for solid performance. The dual-camera system delivers sharp and vibrant images, while its 4700mAh battery with fast charging keeps you powered throughout the day.',
    price: '₹37,000',
    imageUrl: 'assets/6.jpg',
  ),
  Products(
    name: 'Xiaomi 14 Ultra',
    desc: 'The Xiaomi 14 Ultra sports a 6.73-inch LTPO AMOLED display with a variable 120Hz refresh rate for buttery-smooth visuals. Powered by the Snapdragon 8 Gen 3 chipset, it excels in speed and efficiency. The quad-camera setup, highlighted by a 1-inch 50MP sensor, takes professional-quality photos, while a 5000mAh battery supports super-fast charging.',
    price: '₹98,000',
    imageUrl: 'assets/5.jpg',
  ),
  
];