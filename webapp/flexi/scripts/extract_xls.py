import xlrd
import re

#-------------------------------------------------------------------------------
# Constants
#-------------------------------------------------------------------------------

VERSION = "0.0"

RE_DICE            = re.compile(r'(?P<quantity>\d{1,2})D(?P<type>\d{1,2})', flags=re.IGNORECASE)
RE_DAMAGE_RANK     = re.compile(r'[ABC]$', flags=re.IGNORECASE)
RE_DAMAGE_TYPE     = re.compile(r'(K-P|HEAT|RADI)$', flags=re.IGNORECASE)
RE_CRITICAL_RATING = re.compile(r'(?P<damage_rank>[ABC])/(?P<modifyer>-?\d)$', flags=re.IGNORECASE)
RE_RADIUS          = re.compile(r'(?P<close>[-\d])/(?P<medium>[-\d])/(?P<long>[-\d])$', flags=re.IGNORECASE)

def parse_dice(value):
    try:
        return {key:int(value) for key,value in RE_DICE.match(value).groupdict().items()}
    except Exception:
        return

def parse_damage_type(value):
    try:
        return RE_DAMAGE_TYPE.match(value).group(0).upper()
    except Exception:
        return

def parse_damage_rank(value):
    try:
        return RE_DAMAGE_RANK.match(value).group(0).upper()
    except Exception:
        return

def parse_critical_rating(value):
    try:
        critical_rating = RE_CRITICAL_RATING.match.groupdict()
        critical_rating['modifyer'] = int(critical_rating['modifyer'])
        return critical_rating
    except Exception:
        return

def parse_radius(value):
    try:
        return RE_RADIUS.match(value).groupdict()
    except Exception:
        return
    

colum_identifyers = {
    'weapons': [
        #'type',
        #'class',
        ('name', None),
        ('base_penetration', int),
        ('penetration_bonus_ss', parse_dice),
        ('penetration_bonus_bf', parse_dice),
        ('penetration_bonus_fa', parse_dice),
        ('damage_ranking', parse_damage_rank),
        ('damage_type', parse_damage_type),
        ('critital_rating', parse_critical_rating),
        ('range_effectivness_full', int),
        ('range_effectivness_1', int),
        ('range_effectivness_2', int),
        ('range_effectivness_3', int),
        ('range_effectivness_4', int),
        ('range_effectivness_5', int),
        ('capacity', int),
        ('radius', parse_radius),
        ('size', None),
        ('minimum_strength', int),
        ('reload', None),
        ('rate_of_fire', None),
        ('cost', int),
        ('legality', None),
        ('avalability', None),
    ],
}

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
    weapons = []
    row = 0
    while True:
        weapon = {}
        for col in range(0, len(colum_identifyers['weapons'])):
            # Cell Types: 0=Empty, 1=Text, 2=Number, 3=Date, 4=Boolean, 5=Error, 6=Blank
            #cell_type = sheet.cell_type(row, col)
            value = sheet.cell_value(row, col)
            if value:
                weapon[colum_identifyers['weapons'][col]] = value
        if weapon:
            weapons.append(weapon)
            row += 1
        else:
            break
        
    import pdb ; pdb.set_trace()

if __name__ == "__main__":
    main()