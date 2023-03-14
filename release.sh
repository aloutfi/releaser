#!/bin/bash

# Get the branch name from the first command-line argument (default to "main")
branch=${1:-main}

# Get the latest semver version from Github
latest_version=$(gh release list | head -n1 | awk '{print $1}')

# Increment the minor version using awk
new_version=$(echo $latest_version | awk 'BEGIN{FS="."} {print $1"."$2+1".0"}')

# Create a new release with the new semver tag
gh release create $new_version -t $new_version --target $branch --generate-notes --latest

