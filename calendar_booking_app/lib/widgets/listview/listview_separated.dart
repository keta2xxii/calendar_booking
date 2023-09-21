import 'package:calendar_booking_app/extensions/number_extension.dart';
import 'package:calendar_booking_app/widgets/empty/empty.dart';
import 'package:calendar_booking_app/widgets/indicator/app_indicator.dart';
import 'package:calendar_booking_app/widgets/indicator/wrapper_indicator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// BaseListView with separated
/// [items] list of items
/// [itemBuilder] builder for item
/// [overlayLoading] show loading overlay
/// [onRefresh] refresh callback, trigger when pull to refresh
/// [onLoadMore] load more callback
/// [hasMore] has more data, if false, hide load more indicator
/// [state] state of list, include [ListState.initial], [ListState.loading], [ListState.loaded], [ListState.error]
/// [error] error widget to show when error
/// [padding] padding of listview
/// [separatorBuilder] builder for separator
/// [moreLoading] loading indicator for load more
/// [inital] initial widget to show when initial
/// [distanceToBottom] distance to bottom to trigger load more
class BaseListViewSeparated<T> extends StatefulWidget {
  const BaseListViewSeparated({
    Key? key,
    required this.items,
    required this.itemBuilder,
    required this.overlayLoading,
    required this.onRefresh,
    required this.onLoadMore,
    required this.hasMore,
    required this.state,
    this.error,
    this.padding,
    this.separatorBuilder,
    this.moreLoading,
    this.inital,
    this.distanceToBottom = 200,
  }) : super(key: key);

  final List<T> items;
  final Widget Function(T, int) itemBuilder;
  final Widget Function(BuildContext, int)? separatorBuilder;
  final bool overlayLoading;
  final ListState state;
  final bool hasMore;
  final Future<void> Function() onRefresh;
  final Future<void> Function() onLoadMore;
  final EdgeInsetsGeometry? padding;
  final Widget? error;
  final Widget? moreLoading;
  final Widget? inital;

  // distance between position index and bottom to trigger load more
  final double distanceToBottom;

  @override
  State<BaseListViewSeparated<T>> createState() =>
      _BaseListViewSeparatedState<T>();
}

class _BaseListViewSeparatedState<T> extends State<BaseListViewSeparated<T>> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // listen on scroll near the end
    _listenScroll();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  void _listenScroll() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          (_scrollController.position.maxScrollExtent -
              widget.distanceToBottom)) {
        if (kDebugMode) {
          print('BaseListViewSeparated: Load more...');
        }
        widget.onLoadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WrapperIndicator(
      loading: widget.overlayLoading,
      child: widget.state == ListState.error
          ? RefreshIndicator(
              onRefresh: widget.onRefresh,
              child: widget.error ??
                  Center(
                    child: Icon(
                      Icons.error,
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
            )
          : widget.state == ListState.loaded
              ? RefreshIndicator(
                  onRefresh: widget.onRefresh,
                  child: widget.items.isEmpty
                      ? const Empty()
                      : ListView(
                          controller: _scrollController,
                          children: [
                            ListView.separated(
                              physics: const ScrollPhysics(),
                              shrinkWrap: true,
                              padding: widget.padding ??
                                  EdgeInsets.symmetric(vertical: 12.height),
                              separatorBuilder: widget.separatorBuilder ??
                                  (_, __) => Column(
                                        children: [
                                          const Divider(),
                                          12.height.verticalSpace,
                                        ],
                                      ),
                              itemCount: widget.items.length,
                              itemBuilder: (context, index) {
                                return widget.itemBuilder(
                                  widget.items[index],
                                  index,
                                );
                              },
                            ),
                            if (widget.hasMore)
                              widget.moreLoading ??
                                  SizedBox(
                                    height: 80.height,
                                    child: const Center(
                                      child: AppIndicator(),
                                    ),
                                  ),
                          ],
                        ),
                )
              : RefreshIndicator(
                  onRefresh: widget.onRefresh,
                  child: widget.inital ?? const SizedBox.shrink(),
                ),
    );
  }
}

enum ListState {
  loaded,
  error,
  initial,
}
