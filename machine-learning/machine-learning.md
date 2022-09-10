# Machine learning basic

## Conda 

* [conda commands](https://docs.conda.io/projects/conda/en/latest/commands.html)

Get an overview about the config:

```bash
$ conda info

     active environment : automl
    active env location : /opt/miniconda3-4.10.3/envs/automl
            shell level : 1
       user config file : /home/tpasch/.condarc
 populated config files : /home/tpasch/.condarc
          conda version : 4.12.0
    conda-build version : not installed
         python version : 3.9.12.final.0
       virtual packages : __cuda=11.7=0
                          __linux=5.19.6=0
                          __glibc=2.35=0
                          __unix=0=0
                          __archspec=1=x86_64
       base environment : /opt/miniconda3-4.10.3  (read only)
      conda av data dir : /opt/miniconda3-4.10.3/etc/conda
  conda av metadata url : None
           channel URLs : https://conda.anaconda.org/pytorch/linux-64
                          https://conda.anaconda.org/pytorch/noarch
                          https://conda.anaconda.org/likan999/linux-64
                          https://conda.anaconda.org/likan999/noarch
                          https://conda.anaconda.org/conda-forge/linux-64
                          https://conda.anaconda.org/conda-forge/noarch
                          https://conda.anaconda.org/akode/linux-64
                          https://conda.anaconda.org/akode/noarch
                          https://repo.anaconda.com/pkgs/main/linux-64
                          https://repo.anaconda.com/pkgs/main/noarch
                          https://repo.anaconda.com/pkgs/r/linux-64
                          https://repo.anaconda.com/pkgs/r/noarch
          package cache : /opt/miniconda3-4.10.3/pkgs
                          /home/tpasch/.conda/pkgs
       envs directories : /home/tpasch/.conda/envs
                          /opt/miniconda3-4.10.3/envs
               platform : linux-64
             user-agent : conda/4.12.0 requests/2.27.1 CPython/3.9.12 Linux/5.19.6-200.fc36.x86_64 fedora/36 glibc/2.35
                UID:GID : 1000:1000
             netrc file : None
           offline mode : False
```

Show envs:
```bash
$ conda info --envs
# conda environments:
#
                         /opt/anaconda3
                         /opt/anaconda3-2019.07
                         /opt/anaconda3-2019.07/envs/aif360
                         /opt/anaconda3-2019.07/envs/enl
                         /opt/anaconda3-2019.07/envs/tf-gym-36
                         /opt/anaconda3/envs/tf-gym
base                     /opt/miniconda3-4.10.3
automl                *  /opt/miniconda3-4.10.3/envs/automl
automl38                 /opt/miniconda3-4.10.3/envs/automl38
```

Switch envs:
```bash
$ conda activate base
(base) $
```

## anaconda-navigator

There is a UI for conda that makes life easier. 

* https://docs.anaconda.com/anaconda/navigator/install/

```bash
```

```bash
```

```bash
```

## jupyter

Just use `jupyter-lab` for notebooks. This is the newest incarnation of jupyter and runs in the browser.

## Q&A

### Problem: module 'collections' has no attribute 'Mapping'

A python 3.10 problem:

```bash
$ grep -nri collections.Mapping /opt/miniconda3-4.10.3/lib/python3.10/site-packages/
/opt/miniconda3-4.10.3/lib/python3.10/site-packages/binstar_client/utils/config.py:93:        if isinstance(updated_value, collections.Mapping):
grep: /opt/miniconda3-4.10.3/lib/python3.10/site-packages/conda/_vendor/frozendict/__pycache__/__init__.cpython-310.pyc: Übereinstimmungen in Binärdatei
/opt/miniconda3-4.10.3/lib/python3.10/site-packages/conda/_vendor/frozendict/__init__.py:14:    An immutable wrapper around dictionaries that implements the complete :py:class:`collections.Mapping`
/opt/miniconda3-4.10.3/lib/python3.10/site-packages/repo_cli/utils/config.py:108:        if isinstance(updated_value, collections.Mapping):
```

The occurences of `collections.Mapping` must be replaced with `collections.abc.Mapping`.

Reference:
* https://stackoverflow.com/questions/70749690/attributeerror-module-collections-has-no-attribute-mapping


