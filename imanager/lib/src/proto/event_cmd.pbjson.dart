//
//  Generated code. Do not modify.
//  source: lib/src/proto/event_cmd.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use infoDescriptor instead')
const Info$json = {
  '1': 'Info',
  '2': [
    {'1': 'info', '3': 1, '4': 1, '5': 9, '10': 'info'},
  ],
};

/// Descriptor for `Info`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infoDescriptor = $convert.base64Decode(
    'CgRJbmZvEhIKBGluZm8YASABKAlSBGluZm8=');

@$core.Deprecated('Use commandDescriptor instead')
const Command$json = {
  '1': 'Command',
  '2': [
    {'1': 'action', '3': 2, '4': 1, '5': 9, '10': 'action'},
  ],
};

/// Descriptor for `Command`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandDescriptor = $convert.base64Decode(
    'CgdDb21tYW5kEhYKBmFjdGlvbhgCIAEoCVIGYWN0aW9u');

@$core.Deprecated('Use packageInfoDescriptor instead')
const PackageInfo$json = {
  '1': 'PackageInfo',
  '2': [
    {'1': 'package', '3': 1, '4': 1, '5': 9, '10': 'package'},
    {'1': 'moduel', '3': 2, '4': 1, '5': 9, '10': 'moduel'},
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `PackageInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageInfoDescriptor = $convert.base64Decode(
    'CgtQYWNrYWdlSW5mbxIYCgdwYWNrYWdlGAEgASgJUgdwYWNrYWdlEhYKBm1vZHVlbBgCIAEoCV'
    'IGbW9kdWVsEhgKB3ZlcnNpb24YAyABKAlSB3ZlcnNpb24=');

@$core.Deprecated('Use eventDescriptor instead')
const Event$json = {
  '1': 'Event',
  '2': [
    {'1': 'package_info', '3': 1, '4': 1, '5': 11, '6': '.event_cmd.PackageInfo', '10': 'packageInfo'},
    {'1': 'command', '3': 2, '4': 1, '5': 11, '6': '.event_cmd.Command', '10': 'command'},
    {'1': 'info', '3': 3, '4': 1, '5': 11, '6': '.event_cmd.Info', '10': 'info'},
    {'1': 'Others', '3': 4, '4': 1, '5': 9, '10': 'Others'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode(
    'CgVFdmVudBI5CgxwYWNrYWdlX2luZm8YASABKAsyFi5ldmVudF9jbWQuUGFja2FnZUluZm9SC3'
    'BhY2thZ2VJbmZvEiwKB2NvbW1hbmQYAiABKAsyEi5ldmVudF9jbWQuQ29tbWFuZFIHY29tbWFu'
    'ZBIjCgRpbmZvGAMgASgLMg8uZXZlbnRfY21kLkluZm9SBGluZm8SFgoGT3RoZXJzGAQgASgJUg'
    'ZPdGhlcnM=');

