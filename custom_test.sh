python -m abspose -b 75 --test \
       --data_root 'dataset' \
       --pose_txt 'posenet_7-Scenes_dataset_seq_02.txt' --val_pose_txt 'posenet_7-Scenes_dataset_seq_02.txt' \
       --dataset '7-Scenes_dataset' \
       --network 'PoseNet'\
       --beta 100 \
       --resume 'training_output/ckpt/checkpoint_100_0.31m_9.26deg.pth' \
       --odir 'output/posenet/test' 
