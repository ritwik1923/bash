import shutil, os

def delfile1(path):

    # my_file = 'test.txt'
    # path = '.\demo'
    # path=str(input("Enter path??\n>>> "))
    frm = 'c'
    # frm = str(input("Ext??\n>>> "))
    to = 'cpp'
    # to = str(input("to Ext??\n>>> "))
    arr = os.listdir(path)
    # print(arr)
    for file in arr:
        f = path+'\\'+file
        # print(f)
        root = os.path.splitext(f)
        # if os.path.isdir(f) :

        if root[1].lower() != '.'+ frm and root[1].lower() != '.'+ to and os.path.isdir(f) == False :
            print(root)
            # os.remove(f)
            shutil.move(f, 'D:/bin')

    #TODO: 1. add feature to enter folder and delete files
    #TODO: 2. delete folder

def main():
    while True :
        path=str(input("Enter path??(Exit)\n>>> "))
        if path.lower() == "exit" :
            break
        delfile1(path)
    # print("Hello World!")

if __name__ == "__main__":
    main()