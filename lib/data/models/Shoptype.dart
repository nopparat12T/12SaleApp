class ShopType {
  final String id;
  final String name;
  final String descript;
  final String status;

  ShopType({
    required this.id,
    required this.name,
    required this.descript,
    required this.status,
  });

  // Factory method to create a ShopType instance from JSON
  factory ShopType.fromJson(Map<String, dynamic> json) {
    return ShopType(
      id: json['id'] ?? json['_id'] ?? '',
      name: json['name'] ?? '',
      descript: json['descript'] ?? '',
      status: json['status'] ?? '',
    );
  }

  // Method to convert ShopType instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'descript': descript,
      'status': status,
    };
  }
}