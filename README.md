# Humanoid Robotics

`src/`

```bash
meshcat-server

python simple_humanoid_backflip.py
```

# Dependencies

```bash
pip install example-robot-data

pip install pin==3.4.0

pip3 install crocoddyl==3.0.1 # python -c "import crocoddyl; print(crocoddyl.__version__)"

pip install scipy==1.15.3.    # python -c "import scipy; print(scipy.__version__)"

pip install meshcat           # pip show meshcat
```

```bash
python -c "import example_robot_data; print(example_robot_data.__file__)"

sudo find / -type d -name simple_humanoid_description
```

```bash
cp -f /workspaces/bipedal-backflip-trajopt/robots/simple_humanoid/*.urdf /opt/conda/lib/python3.13/site-packages/cmeel.prefix/share/example-robot-data/robots/simple_humanoid_description/urdf/

cp -f /workspaces/bipedal-backflip-trajopt/robots/simple_humanoid/*.srdf /opt/conda/lib/python3.13/site-packages/cmeel.prefix/share/example-robot-data/robots/simple_humanoid_description/srdf/
```

# Reference

https://github.com/zixinz990/humanoid-trajopt-playground
