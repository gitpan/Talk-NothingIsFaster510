#!/bin/bash

# clean out the old stuff
rm -rfv slides/

pod2s5 \
    --name "NOTHING is faster in 5.10" \
    --author "Ævar Arnfjörð Bjarmason" \
    --theme yatil \
    --dest slides lib/Talk/NothingIsFaster510.pod

# Fix up permissions which pods5 screws up
chmod -R 777 slides/