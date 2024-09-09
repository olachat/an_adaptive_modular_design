//
//  Generated code. Do not modify.
//  source: lib/src/proto/event_cmd.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Info extends $pb.GeneratedMessage {
  factory Info({
    $core.String? info,
  }) {
    final $result = create();
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  Info._() : super();
  factory Info.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Info.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Info', package: const $pb.PackageName(_omitMessageNames ? '' : 'event_cmd'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'info')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Info clone() => Info()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Info copyWith(void Function(Info) updates) => super.copyWith((message) => updates(message as Info)) as Info;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Info create() => Info._();
  Info createEmptyInstance() => create();
  static $pb.PbList<Info> createRepeated() => $pb.PbList<Info>();
  @$core.pragma('dart2js:noInline')
  static Info getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Info>(create);
  static Info? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get info => $_getSZ(0);
  @$pb.TagNumber(1)
  set info($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
}

/// Define another message
class Command extends $pb.GeneratedMessage {
  factory Command({
    $core.String? action,
  }) {
    final $result = create();
    if (action != null) {
      $result.action = action;
    }
    return $result;
  }
  Command._() : super();
  factory Command.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Command.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Command', package: const $pb.PackageName(_omitMessageNames ? '' : 'event_cmd'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'action')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Command clone() => Command()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Command copyWith(void Function(Command) updates) => super.copyWith((message) => updates(message as Command)) as Command;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Command create() => Command._();
  Command createEmptyInstance() => create();
  static $pb.PbList<Command> createRepeated() => $pb.PbList<Command>();
  @$core.pragma('dart2js:noInline')
  static Command getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Command>(create);
  static Command? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get action => $_getSZ(0);
  @$pb.TagNumber(2)
  set action($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(2)
  void clearAction() => clearField(2);
}

/// Define package info
class PackageInfo extends $pb.GeneratedMessage {
  factory PackageInfo({
    $core.String? package,
    $core.String? moduel,
    $core.String? version,
  }) {
    final $result = create();
    if (package != null) {
      $result.package = package;
    }
    if (moduel != null) {
      $result.moduel = moduel;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  PackageInfo._() : super();
  factory PackageInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PackageInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PackageInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'event_cmd'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'package')
    ..aOS(2, _omitFieldNames ? '' : 'moduel')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PackageInfo clone() => PackageInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PackageInfo copyWith(void Function(PackageInfo) updates) => super.copyWith((message) => updates(message as PackageInfo)) as PackageInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageInfo create() => PackageInfo._();
  PackageInfo createEmptyInstance() => create();
  static $pb.PbList<PackageInfo> createRepeated() => $pb.PbList<PackageInfo>();
  @$core.pragma('dart2js:noInline')
  static PackageInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PackageInfo>(create);
  static PackageInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get package => $_getSZ(0);
  @$pb.TagNumber(1)
  set package($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPackage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get moduel => $_getSZ(1);
  @$pb.TagNumber(2)
  set moduel($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasModuel() => $_has(1);
  @$pb.TagNumber(2)
  void clearModuel() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);
}

class Event extends $pb.GeneratedMessage {
  factory Event({
    PackageInfo? packageInfo,
    Command? command,
    Info? info,
    $core.String? others,
  }) {
    final $result = create();
    if (packageInfo != null) {
      $result.packageInfo = packageInfo;
    }
    if (command != null) {
      $result.command = command;
    }
    if (info != null) {
      $result.info = info;
    }
    if (others != null) {
      $result.others = others;
    }
    return $result;
  }
  Event._() : super();
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Event', package: const $pb.PackageName(_omitMessageNames ? '' : 'event_cmd'), createEmptyInstance: create)
    ..aOM<PackageInfo>(1, _omitFieldNames ? '' : 'packageInfo', subBuilder: PackageInfo.create)
    ..aOM<Command>(2, _omitFieldNames ? '' : 'command', subBuilder: Command.create)
    ..aOM<Info>(3, _omitFieldNames ? '' : 'info', subBuilder: Info.create)
    ..aOS(4, _omitFieldNames ? '' : 'Others', protoName: 'Others')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Event clone() => Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event)) as Event;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

  @$pb.TagNumber(1)
  PackageInfo get packageInfo => $_getN(0);
  @$pb.TagNumber(1)
  set packageInfo(PackageInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPackageInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageInfo() => clearField(1);
  @$pb.TagNumber(1)
  PackageInfo ensurePackageInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  Command get command => $_getN(1);
  @$pb.TagNumber(2)
  set command(Command v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommand() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommand() => clearField(2);
  @$pb.TagNumber(2)
  Command ensureCommand() => $_ensure(1);

  @$pb.TagNumber(3)
  Info get info => $_getN(2);
  @$pb.TagNumber(3)
  set info(Info v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearInfo() => clearField(3);
  @$pb.TagNumber(3)
  Info ensureInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get others => $_getSZ(3);
  @$pb.TagNumber(4)
  set others($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOthers() => $_has(3);
  @$pb.TagNumber(4)
  void clearOthers() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
