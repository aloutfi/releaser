# Automatic Github Release Script

This bash script automates the process of creating a new Github release with an incremented semver version. The script uses the `gh` command line tool to grab the latest release version, increments the minor version, and then creates a new release with the newly generated semver tag.

## Prerequisites

Before running this script, you must have the following installed on your system:

- `gh` command line tool
- `awk` command line tool

## Usage

1. Open a terminal window and navigate to the directory containing the script.
2. Make the script executable by running the command `chmod +x release.sh`.
3. Add the script to your system's path by running the command `ln -s /path/to/release.sh /usr/local/bin/release`.
4. In the terminal, run the script by typing `release` followed by the branch name (if different from "main").

For example, to create a new release on the "my-feature-branch" branch, run the command:

```bash
release my-feature-branch
```



## Disclaimer

This script assumes that your Github repository is using semver versioning and that your latest release version is in the format `vX.Y.Z`. If your repository is using a different versioning scheme, or if the latest release version is not in the expected format, this script may not work as intended.


------

Note that the `release.sh` file must be executable and located in a directory that is included in your system's `$PATH` environment variable for the `release` command to work. By running the `ln -s` command as shown in step 4, you can link the script to the `/usr/local/bin` directory, which is a common location for user-installed scripts.
