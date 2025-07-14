#!/bin/bash

# Conda 초기화 및 환경 활성화
source /opt/conda/etc/profile.d/conda.sh
conda activate robot-env

# example_robot_data에서 모델 경로 얻기
model_path=$(python -c "import example_robot_data; print(example_robot_data.getModelPath('simple_humanoid'))")

echo "Model path: $model_path"

# 커스텀 URDF, SRDF 파일 복사
cp /workspace/tmp_simple_humanoid.urdf "$model_path/urdf/simple_humanoid.urdf"
cp /workspace/tmp_simple_humanoid.srdf "$model_path/srdf/simple_humanoid.srdf"

echo "Custom robot model files copied successfully!"
