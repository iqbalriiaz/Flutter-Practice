const String tableContact = "tableContact";
const String tableContactColId = "tableContactColId";
const String tableContactColName = "tableContactColName";
const String tableContactColPhone = "tableContactColPhone";
const String tableContactAddress = "tableContactAddress";
const String tableContactDob = "tableContactDob";
const String tableContactGender = "tableContactGender";
const String tableContactImage = "tableContactImage";

class ContactModel {
  int? id;
  String name;
  String phone;
  String? address;
  String? dob;
  String? gender;
  String? images;

  ContactModel(
      {this.id,
      required this.name,
      required this.phone,
      this.address,
      this.dob,
      this.gender,
      this.images});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      tableContactColName: name,
      tableContactColPhone: phone,
      tableContactAddress: address,
      tableContactDob: dob,
      tableContactGender: gender,
      tableContactImage: images,
    };
    return map;
  }

  factory ContactModel.fromMap(Map<String, dynamic> map)
  => ContactModel(
        id: map[tableContactColId],
        name: map[tableContactColName],
        phone: map[tableContactColPhone],
        address: map[tableContactAddress],
        dob: map[tableContactDob],
        gender: map[tableContactGender],
        images: map[tableContactImage],
      );
}
