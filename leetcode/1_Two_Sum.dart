// ==========================================
// 1. PASTE YOUR LEETCODE SOLUTION CLASS HERE
// ==========================================
class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> seen = {};
    for (int i = 0; i < nums.length; i++) {
      int diff = target - nums[i];
      if (seen.containsKey(diff)) {
        return [seen[diff]!, i];
      }

      seen[nums[i]] = i;
    }

    return [];
  }
}

// ==========================================
// 2. RUNNER CONFIGURATION
// ==========================================
void main() {
  final sol = Solution();

  // --- TEST CASE 1 ---
  var nums1 = [2, 7, 11, 15];
  var target1 = 9;

  runTestCase("Test Case 1", () => sol.twoSum(nums1, target1));
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
