
class Team {
  String? name;
  int? step;


  Team({this.name, this.step});

  Team.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    step = json['step'];
  }
}

