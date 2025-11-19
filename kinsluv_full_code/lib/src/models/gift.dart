class Gift {
  final String id;
  final String name;
  final int price;
  final String lottieUrl;

  Gift({required this.id, required this.name, required this.price, required this.lottieUrl});

  factory Gift.fromMap(Map<String, dynamic> m) => Gift(
    id: m['id'] ?? '',
    name: m['name'] ?? '',
    price: m['price'] ?? 0,
    lottieUrl: m['lottieUrl'] ?? '',
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'price': price,
    'lottieUrl': lottieUrl,
  };
}
