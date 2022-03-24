import 'package:flutter/material.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  hintText: "Search E.g iPhone X",
                ),
              ),
            )
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                color: Colors.yellow,
                child: Center(
                  child: Text('Explore'),
                ),
              ),
            ]),
          ),
        ],
      )
    );
  }
}
