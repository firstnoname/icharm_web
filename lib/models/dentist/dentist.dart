enum DentistType { dentist, orthodontics }

class Dentist {
  String? dentistType;
  String prefixName;
  String nameLastname;
  String professionalDentistLicense;
  String operatingSite;
  String address;
  String district;
  String province;
  String postalCode;
  String phoneNumber;
  String email;
  String experience;
  Dentist(
      {this.dentistType,
      required this.prefixName,
      required this.nameLastname,
      required this.professionalDentistLicense,
      required this.operatingSite,
      required this.address,
      required this.district,
      required this.province,
      required this.postalCode,
      required this.phoneNumber,
      required this.email,
      required this.experience});
  Dentist.fromJson(Map<String, dynamic> json)
      : dentistType = json['dentistType'],
        prefixName = json['prefixName'],
        nameLastname = json['nameLastname'],
        professionalDentistLicense = json['professionalDentistLicense'],
        operatingSite = json['operatingSite'],
        address = json['address'],
        district = json['district'],
        province = json['province'],
        postalCode = json['postalCode'],
        phoneNumber = json['phoneNumber'],
        email = json['email'],
        experience = json['experience'];
  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['dentistType'] = dentistType;
    map['prefixName'] = prefixName;
    map['nameLastname'] = nameLastname;
    map['professionalDentistLicense'] = professionalDentistLicense;
    map['operatingSite'] = operatingSite;
    map['address'] = address;
    map['district'] = district;
    map['province'] = province;
    map['postalCode'] = postalCode;
    map['phoneNumber'] = phoneNumber;
    map['email'] = email;
    map['experience'] = experience;
    return map;
  }
}
