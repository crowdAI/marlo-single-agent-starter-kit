![CrowdAI-Logo](https://github.com/crowdAI/crowdai/raw/master/app/assets/images/misc/crowdai-logo-smile.svg?sanitize=true)
# marlo-single-agent-starter-kit

Starter Kit with instructions to make a submission to the first round of the [MarLo challenge](https://www.crowdai.org/challenges/marlo-2018). 

The task is to submit an agent which can maximise the cumulative reward in the [FindTheGoal-v0](https://marlo.readthedocs.io/en/latest/marlo.envs.FindTheGoal.main.html#module-marlo.envs.FindTheGoal.main) environment in [MarLo](https://marlo.readthedocs.io).

Participants will have to submit their code, with packaging specifications, and the evaluator will automatically build a docker image and execute their agent against different instantiations of the `FindTheGoal` environment.

# Requirements
- [docker](https://docs.docker.com/install/)
- [crowdai-repo2docker](https://github.com/crowdAI/repo2docker/) :
  * `pip install -U crowdai-repo2docker`
- [nvidia-docker](https://github.com/NVIDIA/nvidia-docker) *(optional; only needed if you want to use the GPU)*


# Author
Sharada Mohanty <https://twitter.com/MeMohanty>
