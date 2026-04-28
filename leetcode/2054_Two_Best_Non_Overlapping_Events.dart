// ==========================================
// 1. PASTE YOUR LEETCODE SOLUTION CLASS HERE
// ==========================================
class Solution {
  int maxTwoEvents(List<List<int>> events) {
    List<List<int>> points = [];

    for (var event in events) {
      int start = event[0];
      int end = event[1];
      int value = event[2];

      points.add([start, 1, value]);

      points.add([end + 1, 0, value]);
    }

    points.sort((a, b) {
      int timeCompare = a[0].compareTo(b[0]);
      if (timeCompare != 0) return timeCompare;

      return a[1].compareTo(b[1]); // 0 (End) comes before 1 (Start)
    });

    int maxCompletedValue = 0;
    int ans = 0;

    for (var point in points) {
      int type = point[1];
      int value = point[2];

      if (type == 1) {
        ans = max(ans, value + maxCompletedValue);
      } else {
        maxCompletedValue = max(maxCompletedValue, value);
      }
    }

    return ans;
  }

  int max(int a, int b) => a > b ? a : b;
}

// ==========================================
// 2. RUNNER CONFIGURATION
// ==========================================
void main() {
  final sol = Solution();

  // Example 1
  var events1 = [
    [1, 3, 2],
    [4, 5, 2],
    [2, 4, 3],
  ];

  runTestCase("Example 1", () => sol.maxTwoEvents(events1));

  // Example 2
  var events2 = [
    [1, 3, 2],
    [4, 5, 2],
    [1, 5, 5],
  ];

  runTestCase("Example 2", () => sol.maxTwoEvents(events2));
}

// ==========================================
// 3. HELPER FUNCTION
// ==========================================
void runTestCase(String label, dynamic Function() action) {
  final stopwatch = Stopwatch()..start();
  try {
    final result = action();
    stopwatch.stop();
    print("---------------------------------------------------");
    print("[$label]");
    print("OUTPUT: $result");
    print("TIME  : ${stopwatch.elapsedMicroseconds} µs");
  } catch (e) {
    print("ERROR : $e");
  }
}
