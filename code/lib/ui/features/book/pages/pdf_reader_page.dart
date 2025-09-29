import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../../../../data/models/book.dart';

class PdfReaderPage extends StatefulWidget {
  final BookModel book;

  const PdfReaderPage({Key? key, required this.book}) : super(key: key);

  @override
  State<PdfReaderPage> createState() => _PdfReaderPageState();
}

class _PdfReaderPageState extends State<PdfReaderPage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  late PdfViewerController _pdfViewerController;
  int _currentPageNumber = 1;
  int _totalPages = 0;
  bool _isFullscreen = false;

  @override
  void initState() {
    super.initState();
    _pdfViewerController = PdfViewerController();
  }

  @override
  void dispose() {
    _pdfViewerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _isFullscreen ? null : _buildAppBar(),
      body: _buildPdfViewer(),
      bottomNavigationBar: _isFullscreen ? null : _buildBottomControls(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF8D6E63),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.book.title.length > 25
                ? '${widget.book.title.substring(0, 25)}...'
                : widget.book.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          if (_totalPages > 0)
            Text(
              'Trang $_currentPageNumber/$_totalPages',
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(
            _isFullscreen ? Icons.fullscreen_exit : Icons.fullscreen,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              _isFullscreen = !_isFullscreen;
            });
          },
        ),
        IconButton(
          icon: const Icon(Icons.bookmark_border, color: Colors.white),
          onPressed: () {
            // TODO: Add bookmark functionality
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Bookmark đã được thêm!')),
            );
          },
        ),
      ],
    );
  }

  Widget _buildPdfViewer() {
    // Kiểm tra nếu có file PDF
    if (widget.book.pdfAssetPath.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.picture_as_pdf_outlined, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'Không có file PDF để đọc',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              'Vui lòng thêm file PDF vào assets',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return SfPdfViewer.asset(
      widget.book.pdfAssetPath,
      key: _pdfViewerKey,
      controller: _pdfViewerController,
      onDocumentLoaded: (PdfDocumentLoadedDetails details) {
        setState(() {
          _totalPages = details.document.pages.count;
        });
      },
      onPageChanged: (PdfPageChangedDetails details) {
        setState(() {
          _currentPageNumber = details.newPageNumber;
        });
      },
      onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Không thể tải file PDF: ${details.error}'),
            backgroundColor: Colors.red,
          ),
        );
      },
    );
  }

  Widget _buildBottomControls() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Previous page
          IconButton(
            icon: const Icon(Icons.navigate_before, size: 28),
            onPressed: _currentPageNumber > 1
                ? () => _pdfViewerController.previousPage()
                : null,
            color: _currentPageNumber > 1
                ? const Color(0xFF8D6E63)
                : Colors.grey,
          ),

          // Zoom out
          IconButton(
            icon: const Icon(Icons.zoom_out, size: 24),
            onPressed: () => _pdfViewerController.zoomLevel -= 0.25,
            color: const Color(0xFF8D6E63),
          ),

          // Page info
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF8D6E63).withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              '$_currentPageNumber / $_totalPages',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF8D6E63),
              ),
            ),
          ),

          // Zoom in
          IconButton(
            icon: const Icon(Icons.zoom_in, size: 24),
            onPressed: () => _pdfViewerController.zoomLevel += 0.25,
            color: const Color(0xFF8D6E63),
          ),

          // Next page
          IconButton(
            icon: const Icon(Icons.navigate_next, size: 28),
            onPressed: _currentPageNumber < _totalPages
                ? () => _pdfViewerController.nextPage()
                : null,
            color: _currentPageNumber < _totalPages
                ? const Color(0xFF8D6E63)
                : Colors.grey,
          ),
        ],
      ),
    );
  }
}
