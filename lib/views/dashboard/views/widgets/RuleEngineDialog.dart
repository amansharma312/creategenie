import 'package:create_ai_genie_web/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RuleEngineDialog extends StatefulWidget {
  @override
  _RuleEngineDialogState createState() => _RuleEngineDialogState();
}

class _RuleEngineDialogState extends State<RuleEngineDialog> {
  String? _valueType = 'A Single Metric';
  String? _forValue = 'Keyword';
  String? _dataRange = 'Last 7 Days';
  Map<String, bool> _selectedAttributes = {
    'Campaign Type': false,
    'Campaign Name': false,
    'Campaign ID': false,
    'State': false,
    'Keyword ID': false,
  };
  Map<String, bool> _selectedPerformance = {
    'Impressions': false,
    'Clicks': false,
    'Spend': false,
    'CTR': false,
  };
  Map<String, bool> _selectedOrders = {
    'Ad Orders - 1D': false,
    'Ad Orders - 7D': true, // Default selected as per screenshot
    'Ad Orders - 14D': false,
  };

  void _toggleSelection(Map<String, bool> map, String key) {
    setState(() {
      map[key] = !map[key]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: Container(
        width: 600.w,
        padding: EdgeInsets.all(16.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with Title and Icons
            Row(
              children: [
                Text(
                  "Rule Engine",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: CustomColors.darkTextColor,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(Icons.search, color: Colors.purple),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.check, color: Colors.purple),
                  onPressed: () {
                    // Return the selected filter criteria
                    final filterCriteria = {
                      'valueType': _valueType,
                      'forValue': _forValue,
                      'dataRange': _dataRange,
                      'attributes': _selectedAttributes,
                      'performance': _selectedPerformance,
                      'orders': _selectedOrders,
                    };
                    Navigator.of(context).pop(filterCriteria);
                  },
                ),
              ],
            ),
            SizedBox(height: 20.h),

            // Dropdown Section
            Row(
              children: [
                Expanded(
                  child: DropdownButton<String>(
                    value: _valueType,
                    isExpanded: true,
                    hint: Text('Value Type'),
                    items: ['A Single Metric', 'Another Option']
                        .map((String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,
                                  style: GoogleFonts.inter(fontSize: 13.sp)),
                            ))
                        .toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _valueType = newValue;
                      });
                    },
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: DropdownButton<String>(
                    value: _forValue,
                    isExpanded: true,
                    hint: Text('For'),
                    items: ['Keyword', 'Campaign']
                        .map((String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,
                                  style: GoogleFonts.inter(fontSize: 13.sp)),
                            ))
                        .toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _forValue = newValue;
                      });
                    },
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: DropdownButton<String>(
                    value: _dataRange,
                    isExpanded: true,
                    hint: Text('Data Range'),
                    items: ['Last 7 Days', 'Last 30 Days']
                        .map((String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,
                                  style: GoogleFonts.inter(fontSize: 13.sp)),
                            ))
                        .toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _dataRange = newValue;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),

            // Attributes Section
            Text('ATTRIBUTES',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold, fontSize: 14.sp)),
            SizedBox(height: 10.h),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _selectedAttributes.keys.map((key) {
                return _buildChip(
                  label: key,
                  isSelected: _selectedAttributes[key]!,
                  onTap: () => _toggleSelection(_selectedAttributes, key),
                );
              }).toList(),
            ),
            SizedBox(height: 20.h),

            // Performance Section
            Text('PERFORMANCE',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold, fontSize: 14.sp)),
            SizedBox(height: 10.h),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _selectedPerformance.keys.map((key) {
                return _buildChip(
                  label: key,
                  isSelected: _selectedPerformance[key]!,
                  onTap: () => _toggleSelection(_selectedPerformance, key),
                );
              }).toList(),
            ),
            SizedBox(height: 20.h),

            // Orders (Advanced Metrics) Section
            Text('ORDERS (Advanced Metrics)',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold, fontSize: 14.sp)),
            SizedBox(height: 10.h),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _selectedOrders.keys.map((key) {
                return _buildChip(
                  label: key,
                  isSelected: _selectedOrders[key]!,
                  onTap: () => _toggleSelection(_selectedOrders, key),
                );
              }).toList(),
            ),
            SizedBox(height: 20.h),

            // Units Ordered (Advanced Metrics) Section
            Text('UNITS ORDERED (Advanced Metrics)',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold, fontSize: 14.sp)),
            SizedBox(height: 10.h),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                _buildChip(label: 'Campaign Type'),
                _buildChip(label: 'Campaign Name'),
                _buildChip(label: 'Campaign ID'),
                _buildChip(label: 'State'),
                _buildChip(label: 'Keyword ID'),
              ],
            ),
            SizedBox(height: 20.h),

            // Sales (Advanced Metrics) Section
            Text('SALES (Advanced Metrics)',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold, fontSize: 14.sp)),
            SizedBox(height: 10.h),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                _buildChip(label: 'Ad Orders - 1D'),
                _buildChip(label: 'Ad Orders - 7D'),
                _buildChip(label: 'Ad Orders - 14D'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChip(
      {required String label, bool isSelected = false, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Chip(
        label: Text(
          label,
          style: GoogleFonts.inter(fontSize: 12.sp),
        ),
        backgroundColor: isSelected ? Colors.purple[100] : null,
      ),
    );
  }
}
