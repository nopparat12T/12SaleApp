class Store {
  final String storeId;
  final String name;
  final String taxId;
  final String tel;
  final String route;
  final String type;
  final String typeName;
  final String address;
  final String district;
  final String subDistrict;
  final String province;
  final String provinceCode;
  final String postcode;
  final String zone;
  final String area;
  final String latitude;
  final String longitude;
  final String lineId;
  final String note;
  final Approve approve;
  final String status;
  final List<PolicyConsent> policyConsent;
  final List<dynamic> imageList;
  final List<dynamic> shippingAddress;
  final String createdDate;
  final String updatedDate;

  Store({
    required this.storeId,
    required this.name,
    required this.taxId,
    required this.tel,
    required this.route,
    required this.type,
    required this.typeName,
    required this.address,
    required this.district,
    required this.subDistrict,
    required this.province,
    required this.provinceCode,
    required this.postcode,
    required this.zone,
    required this.area,
    required this.latitude,
    required this.longitude,
    required this.lineId,
    required this.note,
    required this.approve,
    required this.status,
    required this.policyConsent,
    required this.imageList,
    required this.shippingAddress,
    required this.createdDate,
    required this.updatedDate,
  });

  Store copyWithDynamicField(String field, String value,
      [List<String>? imageList]) {
    switch (field) {
      case 'storeId':
        return copyWith(storeId: value);
      case 'name':
        return copyWith(name: value);
      case 'taxId':
        return copyWith(taxId: value);
      case 'tel':
        return copyWith(tel: value);
      case 'route':
        return copyWith(route: value);
      case 'type':
        return copyWith(type: value);
      case 'typeName':
        return copyWith(typeName: value);
      case 'address':
        return copyWith(address: value);
      case 'district':
        return copyWith(district: value);
      case 'subDistrict':
        return copyWith(subDistrict: value);
      case 'province':
        return copyWith(province: value);
      case 'provinceCode':
        return copyWith(provinceCode: value);
      case 'postcode':
        return copyWith(postcode: value);
      case 'zone':
        return copyWith(zone: value);
      case 'area':
        return copyWith(area: value);
      case 'latitude':
        return copyWith(latitude: value);
      case 'longitude':
        return copyWith(longitude: value);
      case 'lineId':
        return copyWith(lineId: value);
      case 'note':
        return copyWith(note: value);
      case 'status':
        return copyWith(status: value);
      case 'imageList':
        return copyWith(imageList: imageList);
      case 'createdDate':
        return copyWith(createdDate: value);
      case 'updatedDate':
        return copyWith(updatedDate: value);
      // Add cases for other fields as needed
      default:
        return this; // If the field does not match, return the current instance unchanged
    }
  }

  Store copyWith({
    String? storeId,
    String? name,
    String? taxId,
    String? tel,
    String? route,
    String? type,
    String? typeName,
    String? address,
    String? district,
    String? subDistrict,
    String? province,
    String? provinceCode,
    String? postcode,
    String? zone,
    String? area,
    String? latitude,
    String? longitude,
    String? lineId,
    String? note,
    Approve? approve,
    String? status,
    List<PolicyConsent>? policyConsent,
    List<String>? imageList,
    List<String>? shippingAddress,
    String? createdDate,
    String? updatedDate,
  }) {
    return Store(
      storeId: storeId ?? this.storeId,
      name: name ?? this.name,
      taxId: taxId ?? this.taxId,
      tel: tel ?? this.tel,
      route: route ?? this.route,
      type: type ?? this.type,
      typeName: typeName ?? this.typeName,
      address: address ?? this.address,
      district: district ?? this.district,
      subDistrict: subDistrict ?? this.subDistrict,
      province: province ?? this.province,
      provinceCode: provinceCode ?? this.provinceCode,
      postcode: postcode ?? this.postcode,
      zone: zone ?? this.zone,
      area: area ?? this.area,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      lineId: lineId ?? this.lineId,
      note: note ?? this.note,
      approve: approve ?? this.approve,
      status: status ?? this.status,
      policyConsent: policyConsent ?? this.policyConsent,
      imageList: imageList ?? this.imageList,
      shippingAddress: shippingAddress ?? this.shippingAddress,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
    );
  }

  factory Store.fromJson(Map<String, dynamic> json) {
    return Store(
      storeId: json['storeId'] ?? '',
      name: json['name'] ?? '',
      taxId: json['taxId'] ?? '',
      tel: json['tel'] ?? '',
      route: json['route'] ?? '',
      type: json['type'] ?? '',
      typeName: json['typeName'] ?? '',
      address: json['address'] ?? '',
      district: json['district'] ?? '',
      subDistrict: json['subDistrict'] ?? '',
      province: json['province'] ?? '',
      provinceCode: json['provinceCode'] ?? '',
      postcode: json['postcode'] ?? '',
      zone: json['zone'] ?? '',
      area: json['area'] ?? '',
      latitude: json['latitude'] ?? '',
      longitude: json['longtitude'] ?? '',
      lineId: json['lineId'] ?? '',
      note: json['note'] ?? '',
      approve: json['approve'] != null
          ? Approve.fromJson(json['approve'])
          : Approve(dateSend: '', dateAction: '', appPerson: ''),
      status: json['status'] ?? '',
      policyConsent: (json['policyConsent'] as List?)
              ?.map((e) => PolicyConsent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      imageList: json['imageList'] ?? [],
      shippingAddress: json['shippingAddress'] ?? [],
      createdDate: json['createdDate'] ?? '',
      updatedDate: json['updatedDate'] ?? '',
    );
  }

  // Factory constructor to create a Store instance from JSON
  // factory Store.fromJson(Map<String, dynamic> json) {
  //   return Store(
  //     storeId: json['storeId'],
  //     name: json['name'],
  //     taxId: json['taxId'],
  //     tel: json['tel'],
  //     route: json['route'],
  //     type: json['type'],
  //     typeName: json['typeName'],
  //     address: json['address'],
  //     district: json['district'],
  //     subDistrict: json['subDistrict'],
  //     province: json['province'],
  //     provinceCode: json['provinceCode'],
  //     postcode: json['postcode'],
  //     zone: json['zone'],
  //     area: json['area'],
  //     latitude: json['latitude'],
  //     longitude: json['longtitude'],
  //     lineId: json['lineId'],
  //     note: json['note'],
  //     approve: Approve.fromJson(json['approve']),
  //     status: json['status'],
  //     policyConsent: (json['policyConsent'] as List)
  //         .map((e) => PolicyConsent.fromJson(e))
  //         .toList(),
  //     imageList: json['imageList'],
  //     shippingAddress: json['shippingAddress'],
  //     createdDate: json['createdDate'],
  //     updatedDate: json['updatedDate'],
  //   );
  // }

  // Method to convert Store instance to JSON (optional)
  Map<String, dynamic> toJson() {
    return {
      'storeId': storeId,
      'name': name,
      'taxId': taxId,
      'tel': tel,
      'route': route,
      'type': type,
      'typeName': typeName,
      'address': address,
      'district': district,
      'subDistrict': subDistrict,
      'province': province,
      'provinceCode': provinceCode,
      'postcode': postcode,
      'zone': zone,
      'area': area,
      'latitude': latitude,
      'longtitude': longitude,
      'lineId': lineId,
      'note': note,
      'approve': approve.toJson(),
      'status': status,
      'policyConsent': policyConsent.map((e) => e.toJson()).toList(),
      'imageList': imageList,
      'shippingAddress': shippingAddress,
      'createdDate': createdDate,
      'updatedDate': updatedDate,
    };
  }

  toList() {}
}

class Approve {
  final String dateSend;
  final String dateAction;
  final String appPerson;

  Approve({
    required this.dateSend,
    required this.dateAction,
    required this.appPerson,
  });

  factory Approve.fromJson(Map<String, dynamic> json) {
    return Approve(
      dateSend: json['dateSend'],
      dateAction: json['dateAction'],
      appPerson: json['appPerson'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dateSend': dateSend,
      'dateAction': dateAction,
      'appPerson': appPerson,
    };
  }
}

class PolicyConsent {
  final String status;
  final String date;

  PolicyConsent({
    required this.status,
    required this.date,
  });

  factory PolicyConsent.fromJson(Map<String, dynamic> json) {
    return PolicyConsent(
      status: json['status'],
      date: json['date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'date': date,
    };
  }
}
