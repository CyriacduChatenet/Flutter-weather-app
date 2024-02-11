class Cloud {
  int all;

  Cloud({required this.all});

  factory Cloud.fromJson(Map<String, dynamic> json) {
    return Cloud(
      all: json['all'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'all': all,
    };
  }
}