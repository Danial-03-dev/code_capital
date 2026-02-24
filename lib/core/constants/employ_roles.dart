enum EmployeeRoles {
  designer,
  programmer;

  String get text {
    switch (this) {
      case EmployeeRoles.designer:
        return 'designer';
      case EmployeeRoles.programmer:
        return 'programmer';
    }
  }

  // Convert enum to map
  Map<String, dynamic> toMap() {
    return {'role': name};
  }

  // Convert map to enum
  static EmployeeRoles fromMap(Map<String, dynamic> map) {
    return EmployeeRoles.values.firstWhere((e) => e.name == map['role']);
  }
}
