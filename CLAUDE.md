# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the CARIN Digital Insurance Card Implementation Guide, an HL7 FHIR Implementation Guide that defines a framework for enabling insurance members to retrieve digital insurance card data elements via FHIR API. The IG provides FHIR profiles and resources that payers can use to display insurance card information to consumers.

## Common Development Commands

### Building the Implementation Guide
- `_genonce.sh` - Generates the IG once (main build command)
- `_gencontinuous.sh` - Generates the IG in watch mode for continuous development
- `_updatePublisher.sh` - Updates the FHIR IG Publisher to the latest version

### Prerequisites
- Java runtime environment (required for IG Publisher)
- Internet connection (for terminology validation, or use `-tx n/a` for offline mode)

## Project Architecture

### Core Components
- **FSH (FHIR Shorthand) Files** (`input/fsh/`): Define FHIR profiles, extensions, examples, and terminology
  - `CoverageProfile.fsh` - Main Coverage profile for insurance card data
  - `PatientProfile.fsh` - Patient profile (deviates from US Core for this specific use case)
  - `OrganizationProfile.fsh` - Payer organization profile
  - `Extensions.fsh` - Custom extensions for insurance card elements
  - `ValueSets.fsh` - Terminology value sets
  - `Examples.fsh` - Example instances

- **Configuration Files**:
  - `sushi-config.yaml` - Main SUSHI configuration defining IG metadata, dependencies, and structure
  - `ig.ini` - IG Publisher configuration
  - `ignoreWarnings.txt` - Suppressed validation warnings

- **Content Pages** (`input/pagecontent/`): Markdown files for IG narrative content

### Build Process
1. SUSHI processes FSH files into FHIR JSON resources (`fsh-generated/`)
2. IG Publisher generates the final HTML implementation guide (`output/`)
3. Generated resources include profiles, capability statements, examples, and documentation

### Dependencies
- HL7 FHIR R4 (4.0.1)
- US Core 3.1.1
- Da Vinci Drug Formulary 2.0.0
- HL7 Terminology R4

### Key Profiles
- **C4DIC-Coverage**: Main profile defining insurance coverage information
- **C4DIC-Patient**: Patient profile for insurance members
- **C4DIC-Organization**: Payer organization profile

## Development Workflow
1. Edit FSH files in `input/fsh/` for structural changes
2. Update narrative content in `input/pagecontent/` for documentation
3. Run `_genonce.sh` to build and validate changes
4. Use `_gencontinuous.sh` during active development for automatic rebuilds
5. Check `output/qa.html` for validation issues and warnings

## Important Notes
- This IG deviates from US Core Patient profile (approved for this specific use case only)
- The project targets current proof of coverage rather than historical data
- Network connectivity affects terminology validation (use offline mode if needed)
- Generated files in `fsh-generated/` and `output/` should not be manually edited