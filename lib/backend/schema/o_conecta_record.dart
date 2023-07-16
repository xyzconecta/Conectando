import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OConectaRecord extends FirestoreRecord {
  OConectaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  void _initializeFields() {}

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('oConecta');

  static Stream<OConectaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OConectaRecord.fromSnapshot(s));

  static Future<OConectaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OConectaRecord.fromSnapshot(s));

  static OConectaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OConectaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OConectaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OConectaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OConectaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OConectaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOConectaRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class OConectaRecordDocumentEquality implements Equality<OConectaRecord> {
  const OConectaRecordDocumentEquality();

  @override
  bool equals(OConectaRecord? e1, OConectaRecord? e2) {
    return;
  }

  @override
  int hash(OConectaRecord? e) => const ListEquality().hash([]);

  @override
  bool isValidKey(Object? o) => o is OConectaRecord;
}
