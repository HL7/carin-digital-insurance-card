# CapStatement
FHIR CapabilityStatement generation via python script and Jinja template

Modified from: Eric Haas tool available at: https://github.com/Healthedata1/MyNotebooks/blob/master/CapStatement/R4CapStatement_Maker.ipynb

This tool is mostly adaptations of Eric's great original work.

## Getting Started

Dependecies: 
    fhirclient 
    pandas
    xlrd
    openpyxl
    stringcase
    jinja2
    commonmark
    lxml


To install all dependencies: `pip3 install -r requirements.txt`
to run on windows: `python -m pip ...`

NOTE: fhirclient can be installed via pip or copied from this repository (note that fhirclient is not being maintained in this respository)
The fhirclient requires the r4models to be installed (also included in this repository in the fhirclient folder. These modified R4 models need to be installed with the fhirclient pip site-package in [installdir]/lib/python/site-packages/fhirclient


## Genertate CapabilityStatement with Narrative from xslx file

Usage: `python3 R4CapStatement_Maker.py [xlsx file]`

## Genertate CapabilityStatement Narrative from existing CapabilityStatement

Usage: `python3 R4CapStatement_NarrativeMaker.py [json file] {[Artifacts Folder]}`

Currently creates a new CapabilityStatement json file prefixed with "Narrative-" 

Artifacts folder is optional. It is the location of the locally (pre)built FHIR IG artifacts (output folder). This is used to retrieve the names (title) of artifacts to use as the link text in the generated narrative. 
For any artifacts for which a name was not retrieved (e.g. no artifact folder provided or externally defined references), the script will attempt to retrieve the artifact (and name) using the artifact's specified url.


## Future Plans

Clean up beyond quick and dirty tool.

Merge the two scripts into one script.

Potentially merge with other tooling (including from Eric Haas) to create a single toolset.
