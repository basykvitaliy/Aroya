


class Session {
  static Session _instance = Session._internal();
  static int? field1;
  static int? field2;

  factory Session() => _instance;

  Session._internal() {
    _instance = this;
  }

  factory Session.create(int level, int question) {
    field1 = level;
    field2 = question;
    return _instance;
  }

  factory Session.fromMap(Map<String, dynamic> m) {
    field1 = m['field1'] as int;
    field2 = m['field2'] as int;
    return _instance;
  }

  static bool get hasField1 => field1 != null;
  static bool get hasField2 => field2 != null;

  static Map<String, Object> toMap() {
    return {
      'field1': field1 as int,
      'field2': field2 as int,
    };
  }
}
