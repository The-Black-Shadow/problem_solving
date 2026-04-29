borzeCode = input()
result = ""
i = 0
while i < len(borzeCode):
    if borzeCode[i] == ".":
        result += "0"
    elif borzeCode[i] == "-":
        if i + 1 < len(borzeCode) and borzeCode[i + 1] == ".":
            result += "1"
            i += 1
        elif i + 1 < len(borzeCode) and borzeCode[i + 1] == "-":
            result += "2"
            i += 1
    i += 1
print(result)
