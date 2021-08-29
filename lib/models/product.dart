class Product {
  final String productName;
  final String productPrice;
  final String productImage;
  final Components desc;
  Product({this.productImage, this.productName, this.productPrice, this.desc});
}

class Components {
  final String processor;
  final String gpu;
  final String cabinet;
  final String ram;
  final String storage;
  final String powerSupply;
  final motherBoard;
  Components({this.cabinet,this.gpu,this.motherBoard,this.powerSupply,this.processor,this.ram,this.storage});
}
