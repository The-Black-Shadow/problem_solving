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
    for (const auto& x : v) cout << x << " ";
    cout << "]";
}

template<typename T>
void printSet(const set<T>& s) {
    cout << "{ ";
    for (const auto& x : s) cout << x << " ";
    cout << "}";
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
    int removeDuplicates(vector<int>& nums) {
        set<int> seen;
        seen.insert(nums.begin(), nums.end());
        nums.assign(seen.begin(), seen.end());
        return nums;
    }
};

// --- Main Function (for local testing) ---
int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    Solution sol;

    // --- Test Cases ---
    // 👉 Add your test case logic here
    // --- Test Case 1 ---
    vi strs1 = {1,1,2};
    cout << "Test Case 1\n";
    cout << "Input:  ";
    printVec(strs1);
    cout << "\n";
    cout << "Output: ";
    printSet(sol.removeDuplicates(strs1));
    cout << "\n\n";

    

    return 0;
}