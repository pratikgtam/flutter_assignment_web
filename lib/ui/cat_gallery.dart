import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_web_assignment/ui/custom_scaffold.dart';

class CatGallery extends StatefulWidget {
  const CatGallery({super.key});

  @override
  State<CatGallery> createState() => _CatGalleryState();
}

class _CatGalleryState extends State<CatGallery> {
  final List<String> _catImages = List<String>.from([]);
  bool _loading = false;

  @override
  void initState() {
    _fetchCat();
    super.initState();
  }

  void _fetchCat() {
    Dio()
        .get('https://api.thecatapi.com/v1/images/search?limit=10')
        .then((value) {
      final List<String> images =
          List<String>.from(value.data.map((e) => e['url']));
      setState(() {
        _catImages.addAll(images);
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    log('CatGallery build$_catImages');
    return CustomScaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Cat Gallery',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 50),
          if (_loading)
            const CircularProgressIndicator()
          else
            Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: _catImages
                  .map((e) => Image.network(
                        e,
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ))
                  .toList(),
            ),
          const SizedBox(height: 50),
          if (!_loading)
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _fetchCat();
                });
              },
              child: const Text('Load more cats'),
            ),
          const SizedBox(height: 200)
        ],
      ),
    ));
  }
}
