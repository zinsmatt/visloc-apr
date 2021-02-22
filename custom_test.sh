python -m abspose -b 48 --test \
       --data_root 'dataset' \
       --pose_txt 'posenet_7-Scenes_dataset_seq_02.txt' --val_pose_txt 'posenet_7-Scenes_dataset_seq_02.txt' \
       --dataset '7-Scenes_dataset' \
       --network 'PoseNet'\
       --beta 100 \
       --resume 'training_output/beta/ckpt/checkpoint_300_0.26m_8.47deg.pth' \
       --odir 'output/beta' 



# python -m abspose -b 48 --test \
#        --data_root 'dataset' \
#        --pose_txt 'posenet_7-Scenes_dataset_seq_02.txt' --val_pose_txt 'posenet_7-Scenes_dataset_seq_02.txt' \
#        --dataset '7-Scenes_dataset' \
#        --network 'PoseNet'\
#        --learn_weighting  --homo_init 0.0 -3.0 \
#        --resume 'training_output/learn/ckpt/checkpoint_300_0.20m_7.04deg.pth' \
#        --odir 'output/learn' 

# python -m abspose -b 48 --test \
#        --data_root 'dataset' \
#        --pose_txt 'posenet_7-Scenes_dataset_seq_02.txt' --val_pose_txt 'posenet_7-Scenes_dataset_seq_02.txt' \
#        --dataset '7-Scenes_dataset' \
#        --network 'PoseLSTM'\
#        --learn_weighting  --homo_init 0.0 -3.0 \
#        --resume 'training_output/lstm/ckpt/checkpoint_300_0.14m_6.96deg.pth' \
#        --odir 'output/lstm' 

