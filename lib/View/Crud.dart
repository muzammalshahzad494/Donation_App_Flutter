import 'package:flutter/material.dart';

class Item {
  int id;
  String title;

  Item({required this.id, required this.title});
}

class CrudOperation extends StatefulWidget {
  const CrudOperation({super.key});

  @override
  State<CrudOperation> createState() => _CrudOperationState();
}

class _CrudOperationState extends State<CrudOperation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Flutter CRUD App'),
            ),
            body: ItemListScreen()),
      ),
    );
  }
}

class ItemListScreen extends StatefulWidget {
  @override
  _ItemListScreenState createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  final List<Item> _items = [];
  int _nextId = 1;

  void _addItem(String name) {
    setState(() {
      _items.add(Item(id: _nextId++, title: name));
    });
  }

  void _updateItem(int id, String name) {
    setState(() {
      final index = _items.indexWhere((item) => item.id == id);
      if (index != -1) {
        _items[index] = Item(id: id, title: name);
      }
    });
  }

  void _deleteItem(int id) {
    setState(() {
      _items.removeWhere((item) => item.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD Operations'),
      ),
      body: ListView(
        children: _items.map((item) {
          return ListTile(
            title: Text(item.title),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => _showEditDialog(item),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _deleteItem(item.id),
                ),
              ],
            ),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showAddDialog(),
      ),
    );
  }

  void _showAddDialog() {
    final TextEditingController _nameController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Item'),
          content: TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                _addItem(_nameController.text);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showEditDialog(Item item) {
    final TextEditingController _nameController = TextEditingController(text: item.title);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Item'),
          content: TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: Text('Save'),
              onPressed: () {
                _updateItem(item.id, _nameController.text);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
