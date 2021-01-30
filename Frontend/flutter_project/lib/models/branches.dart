
class Branches {
  int id;
  String branche;

  Branches({this.id, this.branche});

  Branches.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    branche = json['branche'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['branche'] = this.branche;
    return data;
  }
}
