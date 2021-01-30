import 'package:dynamic_list_view/DynamicListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_project/services/api_service.dart';
import 'dart:async';
import 'package:flutter_project/models/branches.dart';
import 'package:http/http.dart';
import 'dart:convert';

class BranchesList extends StatelessWidget {
  final List<Branches> branches;

  BranchesList({Key key, this.branches}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
          itemCount: branches == null ? 0 : branches.length,
          itemBuilder: (BuildContext context, int index) {
            return
              Card(
                  child: InkWell(
                    onTap: () {

                    },
                    child: ListTile(
                      title: Text(branches[index].branche),
                    ),
                  )
              );
          });
  }
}