m, n = map(int, input().split())
for i in range(m):
    if i % 2 == 0:
        print("#" * n)
    else:
        if (i // 2) % 2 == 0:
            print("." * (n - 1) + "#")
        else:
            print("#" + "." * (n - 1))
