class FavoritesManager {
  static final FavoritesManager _instance = FavoritesManager._internal();
  factory FavoritesManager() => _instance;
  FavoritesManager._internal();

  final Set<String> _favoriteIds = {};

  bool isFavorite(String bookId) => _favoriteIds.contains(bookId);

  bool toggleFavorite(String bookId) {
    if (_favoriteIds.contains(bookId)) {
      _favoriteIds.remove(bookId);
      return false;
    } else {
      _favoriteIds.add(bookId);
      return true;
    }
  }

  List<String> getFavorites() => _favoriteIds.toList();

  void removeFavorite(String bookId) => _favoriteIds.remove(bookId);
}
