import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inputs_section/constants/countries.dart';
import '../models/country.dart';
import 'package:flutter/services.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  late final List<Country> _countries;
  String _query = '';
  final _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _countries = countries
        .map<Country>(
          (country) => Country.fromJson(country),
        )
        .toList();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late final List<Country> filteredList;

    if (_query.isEmpty) {
      filteredList = _countries;
    } else {
      filteredList = _countries
          .where(
            (e) => e.name.toLowerCase().contains(
                  _query.toLowerCase(),
                ),
          )
          .toList();
    }
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _textEditingController,
          inputFormatters: [
            FilteringTextInputFormatter.allow(
              RegExp(r'([A-Z]|[a-z])'),
            ),
          ],
          onChanged: (text) {
            _query = text;
            setState(() {});
          },
          decoration: InputDecoration(
            hintText: 'Busca tu pais',
            hintStyle: const TextStyle(color: Colors.white54),
            prefixIcon: const Icon(Icons.search_rounded),
            suffixIcon: IconButton(
              onPressed: () {
                _textEditingController.text = '';
                _query = '';
                FocusScope.of(context).unfocus();
              },
              icon: const Icon(Icons.clear),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 12,
            ),
            focusedBorder: InputBorder.none,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Colors.black38,
              ),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.red,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemBuilder: (_, index) {
          final country = filteredList[index];
          return ListTile(
            title: Text(country.name),
          );
        },
        itemCount: filteredList.length,
      ),
    );
  }
}
