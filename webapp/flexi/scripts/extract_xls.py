import xlrd

#-------------------------------------------------------------------------------
# Constants
#-------------------------------------------------------------------------------

VERSION = "0.0"


#-------------------------------------------------------------------------------
# Command Line
#-------------------------------------------------------------------------------

def get_args():
    import argparse
    # Command line argument handling
    parser = argparse.ArgumentParser(
        description="""extract xls sheet data into json""",
        epilog=""""""
    )
    parser.add_argument('--version', action='version', version=VERSION)

    #import pdb ; pdb.set_trace()

    return parser.parse_args()

def main():
    args = get_args()
    
    workbook = xlrd.open_workbook('data/1.xls')
    sheet = workbook.sheet_by_index(0)
    #Or by name
    #sheet = workbook.sheet_by_name('Sheet1')
    for col in range(0,10):
        for row in range(0,10):
            print(sheet.cell_value(col,row))

if __name__ == "__main__":
    main()