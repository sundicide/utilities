#!/bin/bash
# Target directory
TARGET="../commitFolder"
echo "Finding and copying files and folders to $TARGET"
rm -rf "$TARGET"
cd "./source"
for i in $(git diff --diff-filter=d --name-only HEAD~)
    do
        # First create the target directory, if it doesn't exist.
        mkdir -p "$TARGET/$(dirname $i)"
         # Then copy over the file.
		echo "$i"
        cp "$i" "$TARGET/$i"
    done
echo "Files copied to target directory"
cmd /K