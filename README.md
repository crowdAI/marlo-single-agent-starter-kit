![CrowdAI-Logo](https://github.com/crowdAI/crowdai/raw/master/app/assets/images/misc/crowdai-logo-smile.svg?sanitize=true)
# marlo-single-agent-starter-kit

[![gitter-badge](https://badges.gitter.im/Microsoft/malmo.png)](https://gitter.im/Microsoft/malmo)   

![FindTheGoal](https://media.giphy.com/media/1gWkQbDsHOfo4kZXZv/giphy.gif)

Instructions to participate in the first round of the [MarLo challenge](https://www.crowdai.org/challenges/marlo-2018). 

The task is to submit an agent which can maximise the cumulative reward in the [FindTheGoal-v0](https://marlo.readthedocs.io/en/latest/marlo.envs.FindTheGoal.main.html#module-marlo.envs.FindTheGoal.main) environment in [MarLo](https://marlo.readthedocs.io).

Participants will have to submit their code, with packaging specifications, and the evaluator will automatically build a docker image and execute their agent against different instantiations of the `FindTheGoal` environment.

### <a name="local_build"></a> Local build

Instructions for building and testing the image locally.   

#### <a name="deps"></a> Install Dependencies
* **docker** : By following the instructions [here](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
* **nvidia-docker** : By following the instructions [here](https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0))
* **repo2docker**
```sh
pip install crowdai-repo2docker
```
* **Anaconda** (By following instructions [here](https://www.anaconda.com/download)) 
* **malmo and marlo**
```sh 
conda create python=3.6 --name marlo
conda config --add channels conda-forge
conda activate marlo # or `source activate marlo` depending on your conda version
conda install -c crowdai malmo
pip install -U marlo

# Test installation by :
python -c "import marlo"
python -c "from marlo import MalmoPython"
```
* **Your code specific dependencies**
```sh
# If say you want to install PyTorch
conda install pytorch torchvision -c pytorch
```

#### Package your software environment
You can specify your software environment by using all the [available configuration options of repo2docker](https://repo2docker.readthedocs.io/en/latest/config_files.html). (But please remember to use [crowdai-repo2docker](https://pypi.org/project/crowdai-repo2docker/) to have GPU support)   

The recommended way is to use Anaconda configuration files using **environment.yml** files.

```sh 
conda env export --no-build > environment.yml
```

#### Code Entrypoint
The evaluator will use `/home/crowdai/run.sh` as the entrypoint, so please remember to have a `run.sh` at the root 


# Author
Sharada Mohanty <https://twitter.com/MeMohanty>
