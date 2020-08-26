class PatientData {
    String age;
    String name;
    String place;

    PatientData({this.age, this.name, this.place});

    factory PatientData.fromJson(Map<String, dynamic> json) {
        return PatientData(
            age: json['age'],
            name: json['name'],
            place: json['place'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['age'] = this.age;
        data['name'] = this.name;
        data['place'] = this.place;
        return data;
    }
}