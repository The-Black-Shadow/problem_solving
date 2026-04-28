// ==========================================
// 1. PASTE YOUR LEETCODE SOLUTION CLASS HERE
// ==========================================
class Solution {
  int maximumHappinessSum(List<int> happiness, int k) {
    // Step 1: Sort happiness in Descending order (Big to Small)
    happiness.sort((a, b) => b.compareTo(a));

    int totalHappiness = 0;

    // Step 2: Iterate through the biggest happiness values
    for (int i = 0; i < k; i++) {
      if (happiness[i] < 0) {
        happiness[i] = 0;
      }
      totalHappiness += happiness[i];
      // Step 3: Reduce the happiness of the next child
      if (i + 1 < happiness.length) {
        happiness[i + 1] = happiness[i + 1] - (i + 1);
      }
    }

    return totalHappiness;
  }
}

// ==========================================
// 2. RUNNER CONFIGURATION
// ==========================================
void main() {
  final sol = Solution();

  // --- TEST CASE 1 ---
  var input1 = [1, 2, 3];
  var k1 = 2;

  var input2 = [2, 83, 62];
  var k2 = 3;

  runTestCase(
    "Test Case 1",
    () => sol.maximumHappinessSum(input1, k1), // Match method name above
  );

  runTestCase(
    "Test Case 2",
    () => sol.maximumHappinessSum(input2, k2), // Match method name above
  );
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
