class ClinicHospitalDentist {
  final String clinicHospitalName;
  final String dentalClinicOrHospitalLicenseNumber;
  final String address;
  final String district;
  final String province;
  final String postalCode;
  final String phoneNumber;
  final int sitUnit;
  final String nameLastnameContact;
  final String contactPhoneNumber;
  final String contactEmail;
  ClinicHospitalDentist(
      {required this.clinicHospitalName,
      required this.dentalClinicOrHospitalLicenseNumber,
      required this.address,
      required this.district,
      required this.province,
      required this.postalCode,
      required this.phoneNumber,
      required this.sitUnit,
      required this.nameLastnameContact,
      required this.contactPhoneNumber,
      required this.contactEmail});
  ClinicHospitalDentist.fromJson(Map<String, dynamic> json)
      : clinicHospitalName = json['clinicHospitalName'],
        dentalClinicOrHospitalLicenseNumber =
            json['dentalClinicOrHospitalLicenseNumber'],
        address = json['address'],
        district = json['district'],
        province = json['province'],
        postalCode = json['postalCode'],
        phoneNumber = json['phoneNumber'],
        sitUnit = json['sitUnit'],
        nameLastnameContact = json['nameLastnameContact'],
        contactPhoneNumber = json['contactPhoneNumber'],
        contactEmail = json['contactEmail'];
  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['clinicHospitalName'] = clinicHospitalName;
    map['dentalClinicOrHospitalLicenseNumber'] =
        dentalClinicOrHospitalLicenseNumber;
    map['address'] = address;
    map['district'] = district;
    map['province'] = province;
    map['postalCode'] = postalCode;
    map['phoneNumber'] = phoneNumber;
    map['sitUnit'] = sitUnit;
    map['nameLastnameContact'] = nameLastnameContact;
    map['contactPhoneNumber'] = contactPhoneNumber;
    map['contactEmail'] = contactEmail;
    return map;
  }
}
