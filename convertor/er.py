import os
my_file = 'test.txt'
path = '.\demo'
path=str(input("Enter path??\n>>> "))
frm = 'c'
frm = str(input("Ext??\n>>> "))
to = 'cpp'
to = str(input("to Ext??\n>>> "))
arr = os.listdir(path)
# print(arr)
for file in arr:
    f = path+'\\'+file
    # print(f)
    root = os.path.splitext(f)
    # print(root)
    if(root[1] == '.'+ frm):
        base = root[0] 
        os.rename(f, base + '.'+to)