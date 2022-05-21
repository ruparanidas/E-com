class Products {
  String? name;
  String? description;
  double? price;
  String? img;

  Products({this.description, this.img, this.name, this.price});
}

List<Products> myProductList = [
  Products(
    name: "Headphones",
    description: 'AKG N700NCM2 Wireless',
    price: 199.00,
    img:
        'https://cdn.pixabay.com/photo/2016/11/29/09/08/headphones-1868612__340.jpg',
  ),
  Products(
    name: "Headphones",
    description: 'AIAIAI TMA-2 Modular',
    price: 25.00,
    img:
        "https://cdn.pixabay.com/photo/2018/09/17/14/27/headphones-3683983__340.jpg",
  ),
  Products(
    name: "Headphones",
    description: 'AIAIAI 3.5mm Jack 2m',
    price: 25.00,
    img:
        'https://cdn.pixabay.com/photo/2018/01/16/10/18/headphones-3085681__340.jpg',
  ),
  Products(
    name: "Headphones",
    description: 'AIAIAI 3.5mm Jack 2m',
    price: 25.00,
    img:
        'https://cdn.pixabay.com/photo/2019/03/31/07/44/music-4092614__340.jpg',
  ),
];
