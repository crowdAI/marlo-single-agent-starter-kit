#!/bin/bash

if [[ -z "${CROWDAI_IS_GRADING}" ]]; then
	source activate marlo #Use This line would work in case of local debugs;
	# in a local debug setup, you should use your env name instead of marlo
else
	source activate root #Use This line would work in case of the docker container
fi

python run.py
