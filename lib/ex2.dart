

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Text;
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
class SecondExample extends StatefulWidget {
  @override
  _SecondExampleState createState() => _SecondExampleState();
}

class _SecondExampleState extends State<SecondExample> {
  final FocusNode _focusNode = FocusNode();

  bool _edit = false;
QuillController? _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: _buildContent(context, _controller),
      floatingActionButton: FloatingActionButton.extended(
          label: Text(_edit == true ? 'Done' : 'Edit'),
          onPressed: _toggleEdit,
          icon: Icon(_edit == true ? Icons.check : Icons.edit)),
    );
  }

  Widget _buildContent(BuildContext context, QuillController? controller) {
    // var quillEditor = QuillEditor(
    //   controller: controller!,
    //   scrollController: ScrollController(),
    //   scrollable: true,
    //   focusNode: _focusNode,
    //   autoFocus: true,
    //   readOnly: !_edit,
    //   expands: false,
    //   padding: EdgeInsets.zero,
    //   embedBuilders: FlutterQuillEmbeds.builders(),
    // );
   
   var   quillEditor = QuillEditor(
          controller: _controller!,
          scrollController: ScrollController(),
          scrollable: true,
          focusNode: _focusNode,
          autoFocus: true,
          readOnly: !_edit,
          expands: false,
          padding: EdgeInsets.zero,
          embedBuilders: FlutterQuillEmbeds.builders(),
          )
          
          ;
    
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: quillEditor,
      ),
    );
  }

  void _toggleEdit() {
    setState(() {
      _edit = !_edit;
    });
  }
}



class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}