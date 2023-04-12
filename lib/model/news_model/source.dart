import 'package:equatable/equatable.dart';

class Source extends Equatable {
	final String? id;
	final String? name;

	const Source({this.id, this.name});

	factory Source.fromJson(Map<String, dynamic> json) => Source(
				id: json['id'] as String?,
				name: json['name'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
			};

	Source copyWith({
		String? id,
		String? name,
	}) {
		return Source(
			id: id ?? this.id,
			name: name ?? this.name,
		);
	}

	@override
	List<Object?> get props => [id, name];
}
