#!/bin/bash

if [[ -z "${CROWDAI_MARLO_GRADING}" ]]; then
	source activate marlo #Use This line would work in case of local debugs;
	# in a local debug setup, you should use your env name instead of marlo
	echo "marlo"
else
	source activate root #Use This line would work in case of the docker container
	echo "root"
fi

python run.py
