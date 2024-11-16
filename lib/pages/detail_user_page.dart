import 'package:flutter/material.dart';
import 'package:sanberappflutter/data/datasources/user_datasources.dart';
import 'package:sanberappflutter/data/model/user_model.dart';

class DetailUserPage extends StatefulWidget {
  final int userId;

  const DetailUserPage({Key? key, required this.userId}) : super(key: key);

  @override
  State<DetailUserPage> createState() => _DetailUserPageState();
}

class _DetailUserPageState extends State<DetailUserPage> {
  UserModel? userData;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchDetail();
  }

  Future<void> fetchDetail() async {
    try {
      userData = await UserDatasources().fetchUserDetail(widget.userId);
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Detail')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : userData != null
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('${userData!.firstName} ${userData!.lastName}'),
                    leading: Image.network(userData!.avatar),
                    subtitle: Text(userData!.email),
                  ),
                )
              : const Center(child: Text('User data not found')),
    );
  }
}