a = [7, 11, 3, 9, 4, 15, 1]
for i in range(len(a)):
    for b in range(i + 1, len(a)):
        if a[i] + a[b] == 10:
            print(a[i], a[b])
