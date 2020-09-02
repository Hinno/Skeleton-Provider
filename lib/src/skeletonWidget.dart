import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skeletonprovider/src/skeletonProvider.dart';

class SkeletonWidget<T extends SkeletonProvider> extends StatefulWidget {
  final Function(T) onProviderReady;
  final T provider;
  final Widget Function(BuildContext context, T provider, Widget child) builder;

  SkeletonWidget({this.builder, this.onProviderReady, this.provider});

  @override
  _SkeletonWidgetState<T> createState() => _SkeletonWidgetState<T>();
}

class _SkeletonWidgetState<T extends SkeletonProvider>
    extends State<SkeletonWidget<T>> {
  @override
  void initState() {
    super.initState();
    if (widget.onProviderReady != null) widget.onProviderReady(widget.provider);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => widget.provider,
      child: Consumer<T>(
        builder: widget.builder,
      ),
    );
  }
}
