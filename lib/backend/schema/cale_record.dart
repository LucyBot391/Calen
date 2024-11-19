import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CaleRecord extends FirestoreRecord {
  CaleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "User_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "TaskName" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "TaskDescription" field.
  String? _taskDescription;
  String get taskDescription => _taskDescription ?? '';
  bool hasTaskDescription() => _taskDescription != null;

  // "Complete" field.
  int? _complete;
  int get complete => _complete ?? 0;
  bool hasComplete() => _complete != null;

  void _initializeFields() {
    _userName = snapshotData['User_name'] as String?;
    _taskName = snapshotData['TaskName'] as String?;
    _taskDescription = snapshotData['TaskDescription'] as String?;
    _complete = castToType<int>(snapshotData['Complete']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cale');

  static Stream<CaleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CaleRecord.fromSnapshot(s));

  static Future<CaleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CaleRecord.fromSnapshot(s));

  static CaleRecord fromSnapshot(DocumentSnapshot snapshot) => CaleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CaleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CaleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CaleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CaleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCaleRecordData({
  String? userName,
  String? taskName,
  String? taskDescription,
  int? complete,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'User_name': userName,
      'TaskName': taskName,
      'TaskDescription': taskDescription,
      'Complete': complete,
    }.withoutNulls,
  );

  return firestoreData;
}

class CaleRecordDocumentEquality implements Equality<CaleRecord> {
  const CaleRecordDocumentEquality();

  @override
  bool equals(CaleRecord? e1, CaleRecord? e2) {
    return e1?.userName == e2?.userName &&
        e1?.taskName == e2?.taskName &&
        e1?.taskDescription == e2?.taskDescription &&
        e1?.complete == e2?.complete;
  }

  @override
  int hash(CaleRecord? e) => const ListEquality()
      .hash([e?.userName, e?.taskName, e?.taskDescription, e?.complete]);

  @override
  bool isValidKey(Object? o) => o is CaleRecord;
}
