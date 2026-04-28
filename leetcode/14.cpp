#include <bits/stdc++.h>
using namespace std;

// --- Type Aliases ---
using ll = long long;
using vi = vector<int>;
using vvi = vector<vector<int>>;
using vs = vector<string>;
using pii = pair<int, int>;
using vpii = vector<pair<int, int>>;

// --- Helper Data Structures (for local testing) ---
struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(nullptr) {}
};

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
};

// --- Helper Print Functions ---
template<typename T>
void printVec(const vector<T>& v) {
    cout << "[ ";
    for (const auto& x : v) cout << "\"" << x << "\" ";
    cout << "]";
}

template<typename T>
void printGrid(const vector<vector<T>>& grid) {
    cout << "[\n";
    for (const auto& row : grid) {
        cout << "  ";
        printVec(row);
        cout << "\n";
    }
    cout << "]\n";
}

void printList(ListNode* head) {
    cout << "[ ";
    while (head) {
        cout << head->val << " -> ";
        head = head->next;
    }
    cout << "NULL ]";
}

// --- LeetCode Solution Class ---
class Solution {
public:
    string longestCommonPrefix(vector<string>& strs) {
        if (strs.empty()) {
            return "";
        }

        for (int i = 0; i < strs[0].length(); ++i) {
            char currentChar = strs[0][i];

            for (int j = 1; j < strs.size(); ++j) {
                if (i >= strs[j].length() || strs[j][i] != currentChar) {
                    return strs[0].substr(0, i);
                }
            }
        }

        return strs[0];
    }
};

// --- Main Function (for local testing) ---
int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    Solution sol;

    // --- Test Case 1 ---
    vs strs1 = {"flower", "flow", "flight"};
    cout << "Test Case 1\n";
    cout << "Input:  ";
    printVec(strs1);
    cout << "\n";
    cout << "Output: \"" << sol.longestCommonPrefix(strs1) << "\"\n\n";

    // --- Test Case 2 ---
    vs strs2 = {"dog", "racecar", "car"};
    cout << "Test Case 2\n";
    cout << "Input:  ";
    printVec(strs2);
    cout << "\n";
    cout << "Output: \"" << sol.longestCommonPrefix(strs2) << "\"\n";

    return 0;
}
