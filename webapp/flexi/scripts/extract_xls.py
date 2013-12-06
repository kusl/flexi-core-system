import xlrd
import re
import collections

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


#SheetProcessor = collections.namedtuple('SheetProcessor',['cols', 'post_processor_func'])
class SheetProcessor(object):
    _processors = {}
    #def __new__(mcls, name, bases, namespace):
    #    cls = super().__new__(mcls, name, bases, namespace)
    #    return cls
    def __init__(self, *args, **kwargs):
        #super().__init__(*args, **kwargs)
        self._processors[self.name] = self

class WeaponProcessor(SheetProcessor):
    name='weapons'
    cols = (
        ('name', None),
        ('penetration_base', int),
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
    )
    def post_processor(self, weapons):
        _class = None
        _type = None
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
            # is a full weapon
            if weapon.get('avalability'):
                # Overlay 'Class' and 'Type'
                weapon['class'] = _class
                weapon['type'] = _type
                # Combine related fields
                weapon_mapping = (
                    ('range_effecivness', (
                        ('0','range_effectivness_full'),
                        ('1','range_effectivness_1'),
                        ('2','range_effectivness_2'),
                        ('3','range_effectivness_3'),
                        ('4','range_effectivness_4'),
                        ('5','range_effectivness_5'),
                    )),
                    ('penetration', (
                        ('base', 'penetration_base'),
                        ('bf'  , 'penetration_bonus_bf'),
                        ('fa'  , 'penetration_bonus_fa'),
                        ('ss'  , 'penetration_bonus_ss'),
                    ))
                )
                merge_key_mappings(weapon, weapon_mapping)
            else:
                weapon.clear()
        return list(filter(bool, weapons))


def merge_key_mappings(data, key_mapping):
    """
    Sometimes rows contain multiple siquential colums that are one item of data.
    e.g. multiple range values for weapons.
    rather than having these as discreat items it is possible to merge/map these sub keys into a new sub dict
    
    >>> key_mapping = ('test', (('a','test_1'), ('b','test_2'))
    >>> data = {'name':'bob', 'test_1':'data_a', 'test_2':'data_b',}
    >>> merge_key_mappings(data, key_mappings)
    {'name':'bob', 'test':{'a':'data_a', 'b':'data_b'}}
    
    """
    for destination_key, mapped_keys in key_mapping:
        data_sub = {}
        for destination_key_sub, source_key in mapped_keys:
            data_sub[destination_key_sub] = data.get(source_key)
            if source_key in data:
                del data[source_key]
        data[destination_key] = data_sub

def process_sheet(sheet, sheet_processor):
    """
    All rows will be attempted to be parsed with the same row parser.
    It is expected that some rows will be blank or contain heading data.
    It is expected that the 'post_processor' will identify these empty or heading rows and remove them.
    These headings may contain additional information that needs to be overlayed over the other extracted rows
    """
    items = []
    row = 0
    # Step 1.) Extract all possible items with the colum parsers provided
    while True:
        item = {}
        for col in range(0, len(sheet_processor.cols)):
            # Cell Types: 0=Empty, 1=Text, 2=Number, 3=Date, 4=Boolean, 5=Error, 6=Blank
            #cell_type = sheet.cell_type(row, col)
            try:
                value = sheet.cell_value(row, col)
            except IndexError:
                break # we've run out of sheet
            if value is not None:
                col_name, parser = sheet_processor.cols[col]
                try:
                    item[col_name] = parser(value) if parser else value
                except Exception:
                    pass
        if item:
            items.append(item)
            row += 1
        else:
            break
    # Step 2.) run post porocessor function to tidy up data input
    return sheet_processor.post_processor(items)


#-------------------------------------------------------------------------------
# Command Line
#-------------------------------------------------------------------------------

#sheet_processors = {
#    'weapons': WeaponProcessor(),
#}
WeaponProcessor()


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
    items = process_sheet(sheet, SheetProcessor._processors['weapons'])  #sheet_processors
    
    import pdb ; pdb.set_trace()

if __name__ == "__main__":
    main()
