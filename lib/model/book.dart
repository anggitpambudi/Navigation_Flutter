class Books {
  String image;
  String name;
  int price;

  Books({
    required this.image,
    required this.name,
    required this.price,
  });
}

var getData = [
  Books(
    image: "https://cdn.gramedia.com/uploads/items/9786020729091_AYANGAN_PUTUS_dpn.jpg",
    name: "Layangan Putus",
    price: 120000,
  ),
  Books(
    image: "https://cdn.gramedia.com/uploads/items/9786020729091_AYANGAN_PUTUS_dpn.jpg",
    name: "Putus Layangan",
    price: 120000,
  ),
  Books(
    image: "https://cdn.gramedia.com/uploads/items/9786020729091_AYANGAN_PUTUS_dpn.jpg",
    name: "Layangan",
    price: 120000,
  ),
];