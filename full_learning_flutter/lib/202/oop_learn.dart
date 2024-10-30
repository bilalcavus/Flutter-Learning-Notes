import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:learning_flutter/202/custome_exception.dart';

// Abstract class for file downloading
abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);

  // Sharing functionality
  Future<void> toShare(String path) async {
    // Ensure the path is a valid URL
    final Uri uri = Uri.parse(path);
    
    // Try to launch the URL
    if (!await launchUrl(uri)) {
      throw 'Could not launch $path';
    }
  }
}

// Implement the file download functionality
class FileDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();
    print('Downloading file: ${fileItem.name}');
    
    // Simulate download
    return true;
  }
  
  @override
  Future<void> toShare(String path) async {
    final Uri uri = Uri.parse(path);
    
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $path');
    }
  }
}

// File item class to represent the file
class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}


mixin ShareMixin on IFileDownload {
}