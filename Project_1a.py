# The programm shows how to read and write into csv file

import csv
import os
import random
import string

#filename='data_example.csv'
#print(os.getcwd())
#file_path=os.path.join(os.getcwd(),filename) #Join two paths to retrieve the actual csv file
#print(file_path)

def get_file_path(filename):
    import os
    cwd = os.getcwd()
    file_path = os.path.join(cwd,filename)
    return file_path

filepath = get_file_path('data_file.csv')
#filepath2 = C:\Users\Funmwan\Desktop\Python\Training 101\CSV_Data_Read_Write\data_file.csv
def read_csv(filepath):
    import csv
    with open(filepath,'r') as csvfile:
        reader=csv.reader(csvfile)
        #return reader
        for row in reader:
            print(row)
            '''
            print(row[0],row[1],row[12])
            if 'Year' in row: # The if statement to print the header only
                print(row[0],row[1],row[12])
            if not 'Year' in row: # The if statement to print from the second row to the end.
                if row[12] !='': # This to eliminates the rows with null value in year 2000 i.e column 13
                    print(row[0],'\t',row[1],'\t',round(float(row[12]),2),'\t')
                    #The imported value from csv is string, thus convert
            # This is to split a whole float value into pre and post decimal for additional operations.
            # Such as writing statement to indicate the post decimal alone in cents
            if not 'Year' in row and row[2] !='':
                predecimal,postdecimal=row[2].split('.')
                print(predecimal,' :::: ',postdecimal)
            '''

read_csv(filepath)
