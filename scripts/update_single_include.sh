#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $(dirname "${DIR}")

mkdir -p "single_include/inja"
touch "single_include/inja/inja.hpp"
python3 third_party/amalgamate/amalgamate.py -c scripts/amalgamate_config.json -s include -v yes
