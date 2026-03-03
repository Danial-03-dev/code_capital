enum EmployeeRoles {
  designer,
  programmer;

  @override
  String toString() {
    switch (this) {
      case EmployeeRoles.designer:
        return 'designer';
      case EmployeeRoles.programmer:
        return 'programmer';
    }
  }

  String getPhase() {
    switch (this) {
      case EmployeeRoles.designer:
        return 'Design';
      case EmployeeRoles.programmer:
        return 'Program';
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
