import 'package:flutter/material.dart';

class StrategyBuilderDialog extends StatefulWidget {
  const StrategyBuilderDialog({Key? key}) : super(key: key);

  @override
  State<StrategyBuilderDialog> createState() => _StrategyBuilderDialogState();
}

class _StrategyBuilderDialogState extends State<StrategyBuilderDialog> {
  String? selectedScope;
  bool _showNewConditionBlock = false; // Toggle for showing the condition block
  String? newVariable;
  String? newOperator;
  String? newValue;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7, // 70% width
        height: MediaQuery.of(context).size.height * 0.7, // 60% height
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Strategy Builder',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, size: 20),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Description
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          fontSize: 14, color: Colors.black87, height: 1.5),
                      children: [
                        TextSpan(text: 'Define custom rules to '),
                        TextSpan(
                          text: 'automate actions',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        TextSpan(
                            text: ' based on specific conditions. Use the '),
                        TextSpan(
                          text: '\'if-then\'',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ' strategy builder',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        TextSpan(
                            text:
                                ' to specify actions to execute when conditions are met'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Input fields row
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Strategy Name',
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500, fontSize: 14),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        flex: 5,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Description (optional)',
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500, fontSize: 14),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              hint: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Text(
                                  "Select Strategy Scope",
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 12),
                                ),
                              ),
                              value: selectedScope,
                              items: const [
                                DropdownMenuItem(
                                    value: "Campaign", child: Text("Campaign")),
                                DropdownMenuItem(
                                    value: "Ad Group", child: Text("Ad Group")),
                              ],
                              onChanged: (val) {
                                setState(() {
                                  selectedScope = val;
                                });
                              },
                              icon: Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Icon(Icons.keyboard_arrow_down,
                                    color: Colors.grey.shade700, size: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF9C27B0),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                          ),
                          child: const Text(
                            'Create',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Main content area
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.45,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Strategy Tree section
                        Expanded(
                          flex: 8,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade200),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    'Strategy Tree',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.purple.shade600,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 12),

                                // Strategy tree with custom paint, wrapped in SingleChildScrollView
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Container(
                                      height:
                                          _showNewConditionBlock ? 400 : 280,
                                      // Adjusted height to fit content
                                      child: CustomPaint(
                                        painter: StrategyTreePainter(),
                                        child: Stack(
                                          children: [
                                            // First condition
                                            Positioned(
                                              top: 0,
                                              left: 0,
                                              right: 0,
                                              child: Center(
                                                child: _buildConditionBox("if",
                                                    "Clicks > Min Clicks(50)"),
                                              ),
                                            ),

                                            // OR operator
                                            Positioned(
                                              top: 50, // Reduced spacing
                                              left: 0,
                                              right: 0,
                                              child: Center(
                                                child: _buildOperatorBox("OR"),
                                              ),
                                            ),

                                            // Left branch condition
                                            Positioned(
                                              top: 90, // Reduced spacing
                                              left: 0,
                                              width: 250,
                                              child: Center(
                                                child: _buildConditionBox("if",
                                                    "Cost >= Min Cost(20)"),
                                              ),
                                            ),

                                            // Right branch condition
                                            Positioned(
                                              top: 90, // Reduced spacing
                                              right: 0,
                                              width: 250,
                                              child: Center(
                                                child: _buildConditionBox(
                                                    "if", "Conv == 0"),
                                              ),
                                            ),

                                            // Left AND operator
                                            Positioned(
                                              top: 130, // Reduced spacing
                                              left: 100,
                                              child: _buildOperatorBox("AND"),
                                            ),

                                            // Right AND operator
                                            Positioned(
                                              top: 130, // Reduced spacing
                                              right: 100,
                                              child: _buildOperatorBox("AND"),
                                            ),

                                            // Bottom condition
                                            Positioned(
                                              top: 160, // Reduced spacing
                                              left: 0,
                                              right: 0,
                                              child: Center(
                                                child: _buildConditionBox("if",
                                                    "Clicks > Min Clicks(50)"),
                                              ),
                                            ),

                                            // New Condition Block (inline)
                                            if (_showNewConditionBlock)
                                              Positioned(
                                                top: 200, // Reduced spacing
                                                left: 0,
                                                right: 0,
                                                child: Center(
                                                  child: Container(
                                                    width: 350,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .purple.shade300),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            const Text(
                                                              'New Condition Block',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            ElevatedButton(
                                                              onPressed: () {
                                                                if (newVariable != null &&
                                                                    newOperator !=
                                                                        null &&
                                                                    newValue !=
                                                                        null) {
                                                                  setState(() {
                                                                    _showNewConditionBlock =
                                                                        false;
                                                                    newVariable =
                                                                        null;
                                                                    newOperator =
                                                                        null;
                                                                    newValue =
                                                                        null;
                                                                  });
                                                                }
                                                              },
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    const Color(
                                                                        0xFF9C27B0),
                                                                foregroundColor:
                                                                    Colors
                                                                        .white,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                ),
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        12),
                                                              ),
                                                              child: const Text(
                                                                'Create',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            height: 12),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              'if',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                width: 12),
                                                            Expanded(
                                                              child: Row(
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          36,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        border: Border.all(
                                                                            color:
                                                                                Colors.grey.shade300),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8),
                                                                      ),
                                                                      child:
                                                                          DropdownButtonHideUnderline(
                                                                        child: DropdownButton<
                                                                            String>(
                                                                          isExpanded:
                                                                              true,
                                                                          hint:
                                                                              const Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 12),
                                                                            child:
                                                                                Text(
                                                                              'variable',
                                                                              style: TextStyle(color: Colors.grey, fontSize: 12),
                                                                            ),
                                                                          ),
                                                                          value:
                                                                              newVariable,
                                                                          items: [
                                                                            'Clicks',
                                                                            'Cost',
                                                                            'Conv'
                                                                          ].map((String
                                                                              val) {
                                                                            return DropdownMenuItem<String>(
                                                                              value: val,
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.only(left: 12),
                                                                                child: Text(val, style: const TextStyle(fontSize: 12)),
                                                                              ),
                                                                            );
                                                                          }).toList(),
                                                                          onChanged:
                                                                              (val) {
                                                                            setState(() {
                                                                              newVariable = val;
                                                                            });
                                                                          },
                                                                          icon:
                                                                              const Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: 12),
                                                                            child:
                                                                                Icon(
                                                                              Icons.keyboard_arrow_down,
                                                                              color: Colors.grey,
                                                                              size: 20,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                      width: 8),
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          36,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        border: Border.all(
                                                                            color:
                                                                                Colors.grey.shade300),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8),
                                                                      ),
                                                                      child:
                                                                          DropdownButtonHideUnderline(
                                                                        child: DropdownButton<
                                                                            String>(
                                                                          isExpanded:
                                                                              true,
                                                                          hint:
                                                                              const Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 12),
                                                                            child:
                                                                                Text(
                                                                              'operator',
                                                                              style: TextStyle(color: Colors.grey, fontSize: 12),
                                                                            ),
                                                                          ),
                                                                          value:
                                                                              newOperator,
                                                                          items: [
                                                                            '>',
                                                                            '>=',
                                                                            '==',
                                                                            '<',
                                                                            '<='
                                                                          ].map((String
                                                                              val) {
                                                                            return DropdownMenuItem<String>(
                                                                              value: val,
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.only(left: 12),
                                                                                child: Text(val, style: const TextStyle(fontSize: 12)),
                                                                              ),
                                                                            );
                                                                          }).toList(),
                                                                          onChanged:
                                                                              (val) {
                                                                            setState(() {
                                                                              newOperator = val;
                                                                            });
                                                                          },
                                                                          icon:
                                                                              const Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: 12),
                                                                            child:
                                                                                Icon(
                                                                              Icons.keyboard_arrow_down,
                                                                              color: Colors.grey,
                                                                              size: 20,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                      width: 8),
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          36,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        border: Border.all(
                                                                            color:
                                                                                Colors.grey.shade300),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8),
                                                                      ),
                                                                      child:
                                                                          DropdownButtonHideUnderline(
                                                                        child: DropdownButton<
                                                                            String>(
                                                                          isExpanded:
                                                                              true,
                                                                          hint:
                                                                              const Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 12),
                                                                            child:
                                                                                Text(
                                                                              'value',
                                                                              style: TextStyle(color: Colors.grey, fontSize: 12),
                                                                            ),
                                                                          ),
                                                                          value:
                                                                              newValue,
                                                                          items: [
                                                                            '50',
                                                                            '20',
                                                                            '0'
                                                                          ].map((String
                                                                              val) {
                                                                            return DropdownMenuItem<String>(
                                                                              value: val,
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.only(left: 12),
                                                                                child: Text(val, style: const TextStyle(fontSize: 12)),
                                                                              ),
                                                                            );
                                                                          }).toList(),
                                                                          onChanged:
                                                                              (val) {
                                                                            setState(() {
                                                                              newValue = val;
                                                                            });
                                                                          },
                                                                          icon:
                                                                              const Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: 12),
                                                                            child:
                                                                                Icon(
                                                                              Icons.keyboard_arrow_down,
                                                                              color: Colors.grey,
                                                                              size: 20,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),

                                            // Add condition button
                                            Positioned(
                                              top: _showNewConditionBlock
                                                  ? 350
                                                  : 200,
                                              // Dynamically adjust based on New Condition Block
                                              left: 0,
                                              right: 0,
                                              child: Center(
                                                child: Container(
                                                  width: 36,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey.shade500,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: Colors
                                                            .grey.shade400),
                                                  ),
                                                  child: const Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                    size: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 12),

                                // Add strategy button
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _showNewConditionBlock =
                                              !_showNewConditionBlock;
                                          if (!_showNewConditionBlock) {
                                            newVariable = null;
                                            newOperator = null;
                                            newValue = null;
                                          }
                                        });
                                      },
                                      child: Container(
                                        width: 36,
                                        height: 36,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF9C27B0),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(width: 16),

                        // Actions section
                        Expanded(
                          flex: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade200),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    'Actions',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.purple.shade600,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 12),

                                // Action buttons
                                _buildActionButton("Include in report"),
                                const SizedBox(height: 12),
                                _buildActionButton("Send alert"),
                                const SizedBox(height: 12),
                                _buildActionButton("Pause campaign"),

                                // const Spacer(),
                                const Spacer(),

                                // Add icon in bottom-right
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    width: 36,
                                    height: 36,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF9C27B0),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                )
                                // Add button
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.end,
                                //   children: [
                                //     Container(
                                //       width: 36,
                                //       height: 36,
                                //       decoration: const BoxDecoration(
                                //         color: Color(0xFF9C27B0),
                                //         shape: BoxShape.circle,
                                //       ),
                                //       child: const Icon(
                                //         Icons.add,
                                //         color: Colors.white,
                                //         size: 20,
                                //       ),
                                //     ),
                                //   ],
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildConditionBox(String prefix, String condition) {
    return Container(
      width: 250,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            alignment: Alignment.center,
            child: Text(
              prefix,
              style: TextStyle(
                color: Colors.blueGrey.shade700,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            width: 1,
            height: 24,
            color: Colors.grey.shade400,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              condition,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black87,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.content_copy, size: 16, color: Colors.grey),
            onPressed: () {},
            padding: const EdgeInsets.all(4),
            constraints: const BoxConstraints(),
          ),
          const SizedBox(width: 4),
        ],
      ),
    );
  }

  Widget _buildOperatorBox(String text) {
    return Container(
      width: 50,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade500,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _buildActionButton(String text) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFFF3E5F5),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE1BEE7)),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF6A1B9A),
          ),
        ),
      ),
    );
  }
}

// Custom painter to draw the connecting lines between conditions
class StrategyTreePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.shade400
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // Center point
    final centerX = size.width / 2;

    // First vertical line from top condition to OR
    canvas.drawLine(
      Offset(centerX, 40),
      Offset(centerX, 50),
      paint,
    );

    // Line from OR to left branch
    final leftBranchX = size.width / 4;
    final path1 = Path()
      ..moveTo(centerX, 68)
      ..quadraticBezierTo(centerX, 80, leftBranchX, 80)
      ..lineTo(leftBranchX, 90);
    canvas.drawPath(path1, paint);

    // Line from OR to right branch
    final rightBranchX = size.width * 3 / 4;
    final path2 = Path()
      ..moveTo(centerX, 68)
      ..quadraticBezierTo(centerX, 80, rightBranchX, 80)
      ..lineTo(rightBranchX, 90);
    canvas.drawPath(path2, paint);

    // Line from left condition to left AND
    final leftAndX = size.width / 4;
    canvas.drawLine(
      Offset(leftBranchX, 130),
      Offset(leftAndX, 130),
      paint,
    );

    // Line from right condition to right AND
    final rightAndX = size.width * 3 / 4;
    canvas.drawLine(
      Offset(rightBranchX, 130),
      Offset(rightAndX, 130),
      paint,
    );

    // Line from left AND to bottom condition
    final path3 = Path()
      ..moveTo(leftAndX, 148)
      ..quadraticBezierTo(leftAndX, 160, centerX, 160)
      ..lineTo(centerX, 160);
    canvas.drawPath(path3, paint);

    // Line from right AND to bottom condition
    final path4 = Path()
      ..moveTo(rightAndX, 148)
      ..quadraticBezierTo(rightAndX, 160, centerX, 160)
      ..lineTo(centerX, 160);
    canvas.drawPath(path4, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
