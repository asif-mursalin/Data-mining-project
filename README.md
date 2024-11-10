# Setting Up Data Mining Environment

## Environment Creation
```bash
# Create conda environment with Python 3.12.7
conda create -n data_mining_env python=3.12.7

# Activate the environment
conda activate data_mining_env
```

## Installing Requirements
In your `Project.ipynb`, create a new cell and run:

```python
!pip install -r requirements.txt
```
# Run this before working
## To update main branch while working on your branch

run this:
```bash
./run_to_update_main.bat
```

Before running script:
- You're working on your branch
- You have uncommitted code changes
- Team has pushed new updates to main

After running script:
- You're still on your branch
- Your uncommitted changes are preserved
- Your branch now has all the latest updates from main
