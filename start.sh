#!/bin/bash
# Start with current project activated, two general threads, and one thread in the interactive threadpool
# Default arugment value: /opt/spiders/spidergui/config.toml
cd /opt/spiders/spidergui
julia +1.10 --project=/opt/spiders/spidergui/ --threads 2,2 --gcthreads=1 -e "using SpiderGUI; fetch(SpiderGUI.spiderman())" -- ${1:-/opt/spiders/spidergui/spidergui-config.toml}
