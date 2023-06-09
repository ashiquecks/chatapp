class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });
}

List<Message> messges = [
  Message(
    text: 'good morning',
    date: DateTime.now().subtract(
      const Duration(days: 3, minutes: 1),
    ),
    isSentByMe: false,
  ),
  Message(
    text:
        'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry,',
    date: DateTime.now().subtract(
      const Duration(days: 4, minutes: 2),
    ),
    isSentByMe: false,
  ),
  Message(
    text: 'is simply dummy text of the printing',
    date: DateTime.now().subtract(
      const Duration(days: 5, minutes: 3),
    ),
    isSentByMe: false,
  ),
  Message(
    text: 'Yes sure!',
    date: DateTime.now().subtract(
      const Duration(days: 6, minutes: 4),
    ),
    isSentByMe: false,
  ),
].reversed.toList();
