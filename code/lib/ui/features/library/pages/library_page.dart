import 'package:flutter/material.dart';
import '../../../../data/models/book.dart';
import '../../../../data/models/bookmark.dart';
import '../../../../services/favorites_manager.dart';
import '../../../../services/bookmarks_manager.dart';
import '../../../shared/widgets/book_card.dart';
import '../../../../utils/app_language.dart';
import '../../book/pages/pdf_reader_page.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final FavoritesManager _favoritesManager = FavoritesManager();
  final BookmarksManager _bookmarksManager = BookmarksManager();

  List<String> get _favoriteBookIds => _favoritesManager.getFavorites();
  List<BookmarkModel> get _bookmarks => _bookmarksManager.getAllBookmarks();

  List<BookModel> get _favoriteBooks {
    return sampleBooks
        .where((book) => _favoriteBookIds.contains(book.id))
        .toList();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_onTabChanged);
  }

  void _onTabChanged() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          _buildHeader(),
          _buildTabBar(),
          Expanded(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Builder(builder: (context) => _buildFavoritesTab()),
                    _buildBookmarksTab(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 80,
      color: const Color(0xFF1E88E5),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(Icons.library_books, color: Colors.white, size: 28),
              const SizedBox(width: 12),
              Text(
                AppLanguage.get('library_title'),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TabBar(
        controller: _tabController,
        labelColor: const Color(0xFF1E88E5),
        unselectedLabelColor: Colors.grey,
        indicatorColor: const Color(0xFF1E88E5),
        indicatorWeight: 3,
        indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
        labelStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        tabs: [
          Tab(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.favorite, size: 20),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    '${AppLanguage.get('library_favorites')} (${_favoriteBooks.length})',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Tab(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.bookmark, size: 20),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    '${AppLanguage.get('library_bookmarks')} (${_bookmarks.length})',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFavoritesTab() {
    if (_favoriteBooks.isEmpty) {
      return _buildEmptyState(
        icon: Icons.favorite_border,
        title: AppLanguage.get('library_no_favorites'),
        description: AppLanguage.get('library_add_hint'),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final isTablet = constraints.maxWidth >= 600;
        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isTablet ? 4 : 3,
            childAspectRatio: 0.52,
            crossAxisSpacing: 4,
            mainAxisSpacing: 12,
          ),
          itemCount: _favoriteBooks.length,
          itemBuilder: (context, index) {
            final book = _favoriteBooks[index];
            return BookCard(
              book: book,
              width: null,
              heroContext: 'library_favorite',
              showFavoriteButton: true,
              onFavorite: () {
                final bookTitle = book.title;
                _favoritesManager.removeFavorite(book.id);
                setState(() {});
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      '${AppLanguage.get('library_removed_favorite')} "$bookTitle" ${AppLanguage.get('library_from_favorite')}',
                    ),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildBookmarksTab() {
    if (_bookmarks.isEmpty) {
      return _buildEmptyState(
        icon: Icons.bookmark_border,
        title: AppLanguage.get('library_no_bookmarks'),
        description: AppLanguage.get('library_add_hint'),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _bookmarks.length,
      itemBuilder: (context, index) {
        final bookmark = _bookmarks[index];
        final book = sampleBooks.firstWhere(
          (b) => b.id == bookmark.bookId,
          orElse: () => sampleBooks[0],
        );

        return _buildBookmarkCard(book, bookmark);
      },
    );
  }

  Widget _buildBookmarkCard(BookModel book, BookmarkModel bookmark) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PdfReaderPage(book: book),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    book.coverImageUrl,
                    width: 60,
                    height: 85,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 60,
                        height: 85,
                        color: Colors.grey[300],
                        child: const Icon(Icons.book, color: Colors.grey),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        book.title,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        book.author,
                        style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E88E5).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.bookmark,
                              size: 14,
                              color: Color(0xFF1E88E5),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${AppLanguage.get('pdf_page')} ${bookmark.pageNumber}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFF1E88E5),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                IconButton(
                  icon: const Icon(Icons.close, color: Colors.grey),
                  onPressed: () {
                    final bookTitle = book.title;
                    _bookmarksManager.removeBookmark(bookmark.bookId);
                    setState(() {});
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          '${AppLanguage.get('library_removed_bookmark')} "$bookTitle"',
                        ),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 80, color: Colors.grey[300]),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
