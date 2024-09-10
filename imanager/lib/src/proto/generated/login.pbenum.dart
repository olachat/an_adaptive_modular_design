//
//  Generated code. Do not modify.
//  source: lib/src/proto/login.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserRole extends $pb.ProtobufEnum {
  static const UserRole REG = UserRole._(0, _omitEnumNames ? '' : 'REG');
  static const UserRole NORMAL = UserRole._(1, _omitEnumNames ? '' : 'NORMAL');
  static const UserRole GOD = UserRole._(2, _omitEnumNames ? '' : 'GOD');

  static const $core.List<UserRole> values = <UserRole> [
    REG,
    NORMAL,
    GOD,
  ];

  static final $core.Map<$core.int, UserRole> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserRole? valueOf($core.int value) => _byValue[value];

  const UserRole._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
