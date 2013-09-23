"""
External dependencys do not be commited to the repo
"""
import os
import json
import urllib

import logging
log = logging.getLogger(__name__)


#-------------------------------------------------------------------------------
# Constants
#-------------------------------------------------------------------------------

VERSION = "0.0"
DEFAULT_DEPENDENCYS = 'dependecys.json'
DEFAULT_DESTINATION = 'assets/ext'
DEFAULT_TRACKER = 'dependencys_installed.json'

VERSION_IDENTIFYER = 'VERSION'

#-----

def get_file(source, destination, overwrite=False):
    # mkdirs to path
    # rm file if exisits
    #urllib.urlretrieve ("http://www.example.com/songs/mp3.mp3", "mp3.mp3")
    #urllib.urlretrieve (source, destination)
    print("{0} -> {1}".format(source, destination))


#-------------------------------------------------------------------------------
# Download dependencys
#-------------------------------------------------------------------------------

def fetch_dependencys(dependecys, tracker, destination_path):
    for name, info in dependecys.items():
        
        # Get Versioned dependecys
        target_version = info.get('version')
        if target_version:
            if tracker.setdefault(name, {}).setdefault('version', target_version) != target_version:
                log.info('Updating {0}'.format(name))
            else:
                log.info('Already up to date {0}'.format(name))
                continue
            
        source = info['source'].replace('VERSION', target_version)
        target = info['target']
        if isinstance(target, list):
            for t in target:
                destination = t.replace(VERSION_IDENTIFYER, target_version)
                get_file(source+t, os.path.join(destination_path, destination), overwrite=target_version)
        else:
            get_file(source, os.path.join(destination_path, target.replace(VERSION_IDENTIFYER, target_version)), overwrite=target_version)
        
        tracker[name]['version'] = target_version


def open_dependencys(dependency_filename, tracker_filename, destination_path):
    dependencys = {}
    tracker = {}
    
    with open(dependency_filename, 'r') as datastream:
        dependencys = json.load(datastream)
    try:
        with open(tracker_filename, 'r') as trackerstream:
            tracker = json.load(trackerstream)
    except IOError:
        pass
    
    fetch_dependencys(dependencys, tracker, destination_path)
    
    with open(tracker_filename, 'w') as trackerstream:
        json.dump(tracker, trackerstream)


#-------------------------------------------------------------------------------
# Command Line
#-------------------------------------------------------------------------------

def get_args():
    import argparse
    # Command line argument handling
    parser = argparse.ArgumentParser(
        description="""Download dependencys""",
        epilog=""""""
    )
    parser.add_argument('--dependencys', help='the json data file of the dependencys', default=DEFAULT_DEPENDENCYS)
    parser.add_argument('--destination', help='destination to place dependencys', default=DEFAULT_DESTINATION)
    parser.add_argument('--tracker'    , help='persistent tracker file for installed versions', default=DEFAULT_TRACKER)
    parser.add_argument('--version', action='version', version=VERSION)

    return parser.parse_args()

def main():
    args = get_args()
    
    open_dependencys(
        dependency_filename = args.dependencys,
        tracker_filename    = args.tracker,
        destination_path    = args.destination
    )

if __name__ == "__main__":
    main()