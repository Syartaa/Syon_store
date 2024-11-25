import 'package:flutter/material.dart';
import 'package:syon_ecommerce_app/common/widgets/containers/curved_edges.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedEdges(),
      child: child,
    );
  }
}
