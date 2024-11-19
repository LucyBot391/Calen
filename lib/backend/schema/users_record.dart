import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Profile_picture" field.
  String? _profilePicture;
  String get profilePicture => _profilePicture ?? '';
  bool hasProfilePicture() => _profilePicture != null;

  // "Bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

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

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _profilePicture = snapshotData['Profile_picture'] as String?;
    _bio = snapshotData['Bio'] as String?;
    _userName = snapshotData['User_name'] as String?;
    _taskName = snapshotData['TaskName'] as String?;
    _taskDescription = snapshotData['TaskDescription'] as String?;
    _complete = castToType<int>(snapshotData['Complete']);
    _photoUrl = snapshotData['photo_url'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? profilePicture,
  String? bio,
  String? userName,
  String? taskName,
  String? taskDescription,
  int? complete,
  String? photoUrl,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Profile_picture': profilePicture,
      'Bio': bio,
      'User_name': userName,
      'TaskName': taskName,
      'TaskDescription': taskDescription,
      'Complete': complete,
      'photo_url': photoUrl,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.profilePicture == e2?.profilePicture &&
        e1?.bio == e2?.bio &&
        e1?.userName == e2?.userName &&
        e1?.taskName == e2?.taskName &&
        e1?.taskDescription == e2?.taskDescription &&
        e1?.complete == e2?.complete &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.email == e2?.email;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.profilePicture,
        e?.bio,
        e?.userName,
        e?.taskName,
        e?.taskDescription,
        e?.complete,
        e?.photoUrl,
        e?.email
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
