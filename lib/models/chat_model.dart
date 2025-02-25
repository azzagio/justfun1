class Chat {
  final String id;
  final List<String> userIds;
  final List<String> messageIds;

  Chat({
    required this.id,
    required this.userIds,
    required this.messageIds,
  });
}