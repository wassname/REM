
# Export all just variables as environment variables.
set export

WANDB_MODE := "offline"
WANDB_SILENT := "true"
HYDRA_FULL_ERROR := "1"

main:
    . ./.venv/bin/activate
    python -m pdb src/main.py env.train.id=Craftax-Symbolic-AutoReset-v1 common.device=cuda:0 wandb.mode=offline

pong:
. ./.venv/bin/activate
    python src/main.py env.train.id=BreakoutNoFrameskip-v4 common.device=cuda:0 wandb.mode=online

default: 
    just --list


