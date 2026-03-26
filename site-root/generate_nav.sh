#!/bin/bash
# generate_nav.sh
# Usage: ./generate_nav.sh > mkdocs_nav.yml
# Must be run from the root of your MkDocs project (next to docs/)

DOCS_DIR="docs"

echo "nav:"

# Recursive function to process folders
process_folder() {
    local folder="$1"
    local indent="$2"

    # If there's an index.md, use it as the section intro
    if [ -f "$folder/index.md" ]; then
        local section_name=$(basename "$folder")
        echo "${indent}- ${section_name^}: ${folder}/index.md"
    fi

    # Loop through other Markdown files in this folder
    for file in "$folder"/*.md; do
        [ -f "$file" ] || continue
        [ "$(basename "$file")" == "index.md" ] && continue
        local file_name=$(basename "$file" .md)
        echo "${indent}- ${file_name^}: ${file}"
    done

    # Loop through subfolders
    for sub in "$folder"/*/; do
        [ -d "$sub" ] || continue
        process_folder "${sub%/}" "  $indent"
    done
}

# Start processing the docs folder
process_folder "$DOCS_DIR" "  "
