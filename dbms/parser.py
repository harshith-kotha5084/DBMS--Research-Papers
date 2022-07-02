with open('source.txt') as file:
    lines= file.readlines()
    data=[[None,None,None,None,None,None,[],''] for i in range(int(lines[0]))]
    i=1
    j=0
    
    while i<int(len(lines))-1:
        if(lines[i][:2]=='#*'):
            data[j][0]=lines[i][2:-1]
        elif(lines[i][:2]=='#@'):
            l=lines[i][2:-1].split(',')
            data[j][1]=l[0]
            data[j][2]=', '.join(l[1:])
        elif(lines[i][:2]=='#t'):
            data[j][3]=lines[i][2:-1]
        elif(lines[i][:2]=='#c'):
            data[j][4]=lines[i][2:-1]
        elif(lines[i][:6]=='#index'):
            data[j][5]=lines[i][6:-1]
        elif(lines[i][:2]=='#%'):
            data[j][6].append(lines[i][2:-1])
        elif(lines[i][:2]=='#!'):
            data[j][7]=lines[i][2:-1]
        if(lines[i+1][:2]=='#*' or i==len(lines)-2):
            data[j][6]=', '.join(data[j][6])
            j+=1
        
        i+=1

import csv

cols = ["title","main_author","co_authors","year","venue","paper_id","citations","abstract"]


with open('item.csv', 'w') as f:

    # using csv.writer method from CSV package
    write = csv.writer(f)

    write.writerow(cols)
    write.writerows(data)