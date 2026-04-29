currentYear = int(input())
nextYear = currentYear + 1
while True:
    if len(set(str(nextYear))) == 4:
        print(nextYear)
        break
    nextYear += 1