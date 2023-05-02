import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'address_record.g.dart';

abstract class AddressRecord
    implements Built<AddressRecord, AddressRecordBuilder> {
  static Serializer<AddressRecord> get serializer => _$addressRecordSerializer;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  String? get city;

  String? get district;

  String? get address;

  DocumentReference? get uid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AddressRecordBuilder builder) => builder
    ..city = ''
    ..district = ''
    ..address = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('address');

  static Stream<AddressRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AddressRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AddressRecord._();
  factory AddressRecord([void Function(AddressRecordBuilder) updates]) =
      _$AddressRecord;

  static AddressRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAddressRecordData({
  DateTime? createdAt,
  String? city,
  String? district,
  String? address,
  DocumentReference? uid,
}) {
  final firestoreData = serializers.toFirestore(
    AddressRecord.serializer,
    AddressRecord(
      (a) => a
        ..createdAt = createdAt
        ..city = city
        ..district = district
        ..address = address
        ..uid = uid,
    ),
  );

  return firestoreData;
}
