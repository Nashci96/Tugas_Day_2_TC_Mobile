import 'student.dart';

void main() {
  Student student = new Student(name:'Bayu', dob: DateTime(1995,5,14), gender: 'L', idFaculty: '15', idMajor: '1', year: 2016);
  Student student2 = new Student(name:'Ayu', dob: DateTime(1996,6,15), gender: 'W', idFaculty: '16', idMajor: '2', year: 2017);
  Student student3 = new Student(name:'Agung', dob: DateTime(1997,7,16), gender: 'L', idFaculty: '17', idMajor: '3', year: 2018);
  Student student4 = new Student(name:'Siska', dob: DateTime(1998,8,17), gender: 'W', idFaculty: '18', idMajor: '4', year: 2019);
  Student student5 = new Student(name:'Joni', dob: DateTime(1995,1,1), gender: 'L', idFaculty: '1', idMajor: '1', year: 2016);
  Student student6 = new Student(name:'Anna', dob: DateTime(1996,3,21), gender: 'W', idFaculty: '5', idMajor: '1', year: 2018);
  Student student7 = new Student(name:'Lia', dob: DateTime(1999,9,19), gender: 'W', idFaculty: '9', idMajor: '9', year: 2019);
  Student student8 = new Student(name:'Andre', dob: DateTime(1996,6,6), gender: 'L', idFaculty: '6', idMajor: '6', year: 2016);
  Student student9 = new Student(name:'Rio', dob: DateTime(1996,5,14), gender: 'L', idFaculty: '4', idMajor: '7', year: 2019);
  Student student10 = new Student(name:'Yuli', dob: DateTime(1990,9,30), gender: 'W', idFaculty: '15', idMajor: '1', year: 2010);

  List<Student> collegeClass = [];
  collegeClass.add(student);
  collegeClass.add(student2);
  collegeClass.add(student3);
  collegeClass.add(student4);
  collegeClass.add(student5);
  collegeClass.add(student6);
  collegeClass.add(student7);
  collegeClass.add(student8);
  collegeClass.add(student9);
  collegeClass.add(student10);
  print(collegeClass.length);

  List<Student> maleClass = [];
  List<Student> femaleClass = [];
  collegeClass.forEach((student) {
    if(student.gender == 'L'){
      maleClass.add(student);
    } else {
      femaleClass.add(student);
    } 
  });

  print("===============================================");

  maleClass.forEach((student) { 
    print(student.name);
    print(student.generateIdStudent());
    print("Murid Laki - Laki");
    });

  print("===============================================");

  femaleClass.forEach((student) { 
    print(student.name);
    print(student.generateIdStudent());
    print("Murid Perempuan");
    });  

}