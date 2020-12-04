
class Post {

  String first_name;
  String job_title;
  String image;
  Post({this.first_name,this.job_title,this.image});

  factory Post.fromJson(Map<String,dynamic>json){
    return Post(
      first_name:json['first_name'],
      job_title: json['job_title'],
      image: json['image'],

    );
  }
  // factory Employees.fromJson(Map<String, dynamic> json) => _$EmployeesFromJson(json);
  // Map<String, dynamic> toJson() => _$EmployeesToJson(this);
}