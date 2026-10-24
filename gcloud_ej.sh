#!/usr/bin/env bash
# Template for running Google Cloud CLI commands.
set -euo pipefail

usage() {
	echo "Usage: PROJECT_ID=<your-project-id> [REGION=asia-southeast1] [ZONE=asia-southeast1-a] $0" >&2
}

if ! command -v gcloud >/dev/null 2>&1; then
	echo "Error: gcloud is not installed or is not available on PATH." >&2
	exit 1
fi

PROJECT_ID="${PROJECT_ID:-gcci01k8hsrv9stg1x61bk9776z2qb}"
REGION="${REGION:-asia-southeast1}"
ZONE="${ZONE:-asia-southeast1-a}"

if [[ -z "$PROJECT_ID" ]]; then
	echo "Error: PROJECT_ID is required." >&2
	usage
	exit 1
fi

# Set the project and location defaults for this gcloud configuration.
gcloud config set project "$PROJECT_ID"
gcloud config set compute/region "$REGION"
gcloud config set compute/zone "$ZONE"

# Some project codes:
# TSU Cloud PRD - gcci01k8hsrv9stg1x61bk9776z2qb
# TSU Cloud UAT - gcci01k8hss8nx1xbs41knwsny434a
# NGHTS - lta0001-gcp-136-gvt19017-3

# Add your gcloud commands here, for example:
gcloud auth login

gcloud config set project gcci01k8hsrv9stg1x61bk9776z2qb


