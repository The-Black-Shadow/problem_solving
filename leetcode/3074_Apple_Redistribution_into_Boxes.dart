// ==========================================
// 1. PASTE YOUR LEETCODE SOLUTION CLASS HERE
// ==========================================
class Solution {
  int minimumBoxes(List<int> apple, List<int> capacity) {
    // Step 1: Calculate total number of apples
    // .fold is just a fancy way to sum a list: starting at 0, add each element
    int totalApples = apple.fold(0, (sum, item) => sum + item);

    // Step 2: Sort capacity in Descending order (Big to Small)
    capacity.sort((a, b) => b.compareTo(a));

    int boxesUsed = 0;

    // Step 3: Iterate through the biggest boxes
    for (int boxSize in capacity) {
      totalApples -= boxSize; // Fill the box
      boxesUsed++; // Count it

      // If we have covered all apples (total is 0 or negative), we are done
      if (totalApples <= 0) {
        return boxesUsed;
      }
    }

    return boxesUsed;
  }
}

// ==========================================
// 2. RUNNER CONFIGURATION
// ==========================================
void main() {
  final sol = Solution();

  // Example 1
  var apple1 = [1, 3, 2];
  var cap1 = [4, 3, 1, 5, 2];

  runTestCase("Example 1", () => sol.minimumBoxes(apple1, cap1));

  // Example 2
  var apple2 = [5, 5, 5];
  var cap2 = [2, 4, 2, 7];

  runTestCase("Example 2", () => sol.minimumBoxes(apple2, cap2));
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
