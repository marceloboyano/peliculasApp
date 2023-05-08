// To parse this JSON data, do
//
//     final popularResponse = popularResponseFromJson(jsonString);

import 'dart:convert';

import 'package:peliculas/models/models.dart';

class PopularResponse {
  int page;
  List<Movie> results;
  int totalPages;
  int totalMovies;

  PopularResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalMovies,
  });

  factory PopularResponse.fromJson(String str) =>
      PopularResponse.fromMap(json.decode(str));

  factory PopularResponse.fromMap(Map<String, dynamic> json) => PopularResponse(
        page: json["page"] as int? ?? 0,
        results: List<Movie>.from(json["results"].map((x) => Movie.fromMap(x))),
        totalPages: json["total_pages"] as int? ?? 0,
        totalMovies: json["total_movies"] as int? ?? 0,
      );
}
