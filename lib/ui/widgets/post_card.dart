import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_internet_client/extensions/datetime_ext.dart';
import 'package:quick_internet_client/model/post.dart';

class PostCard extends ConsumerWidget {
  const PostCard({
    super.key,
    required this.post,
    required this.onTap,
  });

  final Post post;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Text(post.title),
            Text(post.updatedAt.toYYMMDDString()),
            Text('${post.bodyCharacterCount} 文字'),
          ],
        ),
      ),
    );
  }
}
