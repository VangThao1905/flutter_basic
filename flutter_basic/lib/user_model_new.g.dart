// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_new.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelNewImpl _$$UserModelNewImplFromJson(Map<String, dynamic> json) =>
    _$UserModelNewImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      age: (json['age'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserModelNewImplToJson(_$UserModelNewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
    };
