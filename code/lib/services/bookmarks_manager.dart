import '../data/models/bookmark.dart';

class BookmarksManager {
  static final BookmarksManager _instance = BookmarksManager._internal();
  factory BookmarksManager() => _instance;
  BookmarksManager._internal();

  final Map<String, int> _bookmarks = {};

  void addBookmark(String bookId, int pageNumber) {
    _bookmarks[bookId] = pageNumber;
  }

  void removeBookmark(String bookId) {
    _bookmarks.remove(bookId);
  }

  int? getBookmark(String bookId) => _bookmarks[bookId];

  List<BookmarkModel> getAllBookmarks() {
    return _bookmarks.entries
        .map((e) => BookmarkModel(bookId: e.key, pageNumber: e.value))
        .toList();
  }

  bool hasBookmark(String bookId) => _bookmarks.containsKey(bookId);
}
