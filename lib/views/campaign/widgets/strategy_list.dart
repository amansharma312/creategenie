import 'package:create_ai_genie_web/views/campaign/widgets/strategy.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'strategy_builder_dialog.dart';

class StrategyList extends StatefulWidget {
  const StrategyList({super.key});

  @override
  State<StrategyList> createState() => _StrategyListState();
}

class _StrategyListState extends State<StrategyList> {
  final List<Strategy> _strategies = [];

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Campaign Strategies",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: _showStrategyBuilder,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.add),
                  label: const Text("Create Strategy"),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (_strategies.isEmpty)
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      Icon(Icons.auto_awesome,
                          size: 48, color: Colors.grey.shade400),
                      const SizedBox(height: 16),
                      Text(
                        "No strategies created yet",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Create your first strategy to automate campaign actions",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            else
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _strategies.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final strategy = _strategies[index];
                  return ListTile(
                    title: Text(
                      strategy.name,
                      style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      strategy.description.isEmpty
                          ? "Scope: ${strategy.scope}"
                          : "${strategy.description} • Scope: ${strategy.scope}",
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Switch(
                          value: true,
                          onChanged: (value) {},
                          activeColor: Colors.deepPurple,
                        ),
                        IconButton(
                          icon: const Icon(Icons.edit_outlined),
                          onPressed: () =>
                              _showStrategyBuilder(strategy: strategy),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete_outline,
                              color: Colors.red),
                          onPressed: () => _deleteStrategy(index),
                        ),
                      ],
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  void _showStrategyBuilder({Strategy? strategy}) async {
    final result = await showDialog<Strategy>(
      context: context,
      builder: (context) => const StrategyBuilderDialog(),
    );

    if (result != null) {
      setState(() {
        if (strategy != null) {
          // Edit existing strategy
          final index = _strategies.indexOf(strategy);
          if (index != -1) {
            _strategies[index] = result;
          }
        } else {
          // Add new strategy
          _strategies.add(result);
        }
      });
    }
  }

  void _deleteStrategy(int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Delete Strategy"),
        content: const Text("Are you sure you want to delete this strategy?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _strategies.removeAt(index);
              });
              Navigator.of(context).pop();
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text("Delete"),
          ),
        ],
      ),
    );
  }
}
