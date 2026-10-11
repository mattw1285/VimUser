# VimUser

_A centralised repo of my personal config files and env setup._

## Overview

The `MyConfig` repo is a centralised repo for my personal config files and env 
setup. The goal is to minimise repetitive manual steps, automate common tasks 
and maintain a reproducible baseline.

This repo doubles as:
- A Safety Net
- Living Record Of Env
- Baseline Setup

This repo is intentionally opinionated and personal. It’s not meant to be 
universal, but rather my evolving toolkit for personal projects.

Despite being somwhat overkill, _**I**nfrastructure **A**s **C**ode_ is where 
this is going... or at least my terrible version of. I don't quite have the 
need or hardware for terraform, so reflashing os drives it is!

---

> "When one gets sick, you shoot it and get another one."

---

## Goals:

- **Reproducibility** – quick and consistent env spin up
- **Incremental Improvement** – standardise setup while allowing refinement
- **Automation:** – reduce manual steps
- **Learning** - infra tasks and bash practice

---

> "Your infrastructure should be a graveyard... Just like your list of nearly 
complete project"

---

## How Two:

run `cd .../MyConfig/btw_i_use_vim && source setup.sh`...

Then maybe pray to the gods that I've looked at this recently, stopped 
procrastinating and learnt how to do it. But `setup.sh` should work fine.

I'll tell you about the os setup when i finish it lol! :D

---

> "It’s not a 'production outage, it’s a 'spontaneous load-testing exercise' 
for our disaster recovery plan."

---

## Roadmap:

| **TOPIC** | **PROGRESS** | **PERCENT** |
| :--- | :--- | :--- |
| Dev OS | ![60%](https://geps.dev/progress/60) | 60% |
| Dev Setup | ![80%](https://geps.dev/progress/80) | 80% |
| VIM | ![50%](https://geps.dev/progress/50) | 50% |
| Utility Servers | ![0%](https://geps.dev/progress/0) | 0% |
| Dekstop Setup | ![0%](https://geps.dev/progress/0) | 0% |

---

> "Build it, then burn it."

---

## Currently Included:

- `os_configs` - DEV Config
  - CLI Install Tool
  - SSH Auto Enable
- `btw_i_use_vim` - development niceness
  - vim config
  - tmux config... but not setup
  - bash aliases

```
MyConfig
├── ai_cli
│   └── ai.py
├── btw_i_use_vim
│   ├── dot_files
│   ├── helper_scripts
│   │   ├── dev_py.sh
│   │   └── dot_files.py
│   └── setup.sh
├── os_configs
│   ├── cloud-init
│   │   ├── meta-data
│   │   │   └── base-file
│   │   ├── network-config
│   │   │   └── base-file
│   │   └── user-data
│   │       ├── base-file
│   │       └── pi_dev.yaml
│   ├── pi_config.py
│   └── pi_os.sh
└── README.md

10 directories, 11 files
```
