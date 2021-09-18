import 'dart:math';

class Students{
  Students({
    required this.students,
  });

  final List<Students> students;

  factory Students.fromJson(Map<String, dynamic> json) => Students(
    students: List<Students>.from(json["students"].map((x) => Students.fromJson(json))),
  );

  Map<String, dynamic> toJson() => {
    "students":List<dynamic>.from(students.map((x) => x.toJson()))
  };

}

class Student {
  final String name;
  String gender;
  DateTime dob;
  String idFaculty;
  String idMajor;
  int year;
  int idRandom = Random().nextInt(9) ;

  Student({
    required this.name,
    required this.dob,
    required this.gender,
    required this.idFaculty,
    required this.idMajor,
    required this.year,
  });

  factory Student.fromJson(Map<String,dynamic> json) => Student(
    name: json["name"],
    dob: json["dob"],
    gender: json["gender"],
    idFaculty: json["idFaculty"],
    idMajor: json["idMajor"],
    year: json["year"],
  );

  Map<String, dynamic> toJson() => {
        "name": name,
        "dob" : dob,
        "gender": gender,
        "idFaculty" : idFaculty,
        "idMajor" : idMajor,
        "year"  : year,
    };

  generateIdGender(){
    return this.gender=='L' ? '1' : gender=='W'?'2' : throw 'Gender salah';
  }
  
  generateIdMajor(int id){
    String outputId = id<10? '0$id' : id.toString();
    return outputId;
  }

  generateIdStudent(){
    try{
      return 'NIM = ${this.year.toString().substring(2)}$idFaculty${generateIdMajor(int.parse(idMajor))}${generateIdGender()}${dob.day}${dob.month}${dob.year}${idRandom.toString()}';
    } catch(e){
      return e;
    }
  }

}