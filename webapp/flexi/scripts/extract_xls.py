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
RE_RATE_OF_FIRE    = re.compile(r'(?P<single>[-\d])/(?P<semi>[-\d])/(?P<auto>[-\d])$', flags=re.IGNORECASE)

def _groupdict_int(value, regex):
    return {key:(None if value is '-' else int(value)) for key,value in regex.match(value).groupdict().items()}

def parse_dice(value):
    return _groupdict_int(value, RE_DICE)

def parse_damage_type(value):
    return RE_DAMAGE_TYPE.match(value).group(0).upper()

def parse_damage_rank(value):
    return RE_DAMAGE_RANK.match(value).group(0).upper()

def parse_critical_rating(value):
    critical_rating = RE_CRITICAL_RATING.match(value).groupdict()
    critical_rating['modifyer'] = int(critical_rating['modifyer'])
    return critical_rating

def parse_radius(value):
    return _groupdict_int(value, RE_RADIUS)

def parse_rate_of_fire(value):
    return _groupdict_int(value, RE_RATE_OF_FIRE)



colum_identifyers = {
    'weapons': [
        #'class',
        #'type',
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
        ('rate_of_fire', parse_rate_of_fire),
        ('cost', int),
        ('legality', None),
        ('avalability', None),
    ],
}

def post_processor(weapons):
    _class = None
    _type = None
    #import pdb ; pdb.set_trace()
    for weapon in weapons:
        # Remeber 'Class'
        if weapon.get('name') and weapon.get('avalability')=='Availability':
            _type = weapon.get('name')
            weapon.clear()
            continue
        # Remeber 'Type'
        if weapon.get('name') and weapon.get('avalability')=='':
            _class = weapon.get('name')
            weapon.clear()
            continue
        # Overlay 'Class' and 'Type'
        if weapon.get('avalability'):
            weapon['class'] = _class
            weapon['type'] = _type
        else:
            weapon.clear()
    return weapons


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
            try:
                value = sheet.cell_value(row, col)
            except IndexError:
                break # we've run out of sheet
            if value is not None:
                col_name, parser = colum_identifyers['weapons'][col]
                try:
                    weapon[col_name] = parser(value) if parser else value
                except Exception:
                    pass
        if weapon:
            weapons.append(weapon)
            row += 1
        else:
            break
    post_processor(weapons)
    import pdb ; pdb.set_trace()

if __name__ == "__main__":
    main()
