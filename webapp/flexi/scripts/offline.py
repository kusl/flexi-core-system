"""
Render the site into a series of html files for saving and use offline
"""
import os


import logging
log = logging.getLogger(__name__)


#-------------------------------------------------------------------------------
# Constants
#-------------------------------------------------------------------------------



#-------------------------------------------------------------------------------
# Command Line
#-------------------------------------------------------------------------------

def get_args():
    import argparse
    # Command line argument handling
    parser = argparse.ArgumentParser(
        description="""Offline - Generate offline local browsable snapshot of site""",
        epilog=""""""
    )
    parser.add_argument('--version', action='version', version=VERSION)

    return parser.parse_args()

def main():
    args = get_args()
    
    logging.basicConfig(level=logging.INFO)

    # Do stuff

if __name__ == "__main__":
    main()
