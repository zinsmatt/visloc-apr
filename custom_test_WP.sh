# python -m abspose -b 48 --test \
#        --data_root 'datasets' \
#        --pose_txt 'dataset_train_mixed.txt' --val_pose_txt 'dataset_train_mixed.txt' \
#        --dataset 'WP_dataset' \
#        --network 'PoseNet'\
#        --beta 100 \
#        --resume 'training_output/WP/mixed/beta/ckpt/checkpoint_2000_0.18m_6.47deg.pth' \
#        --odir 'output/' 


# python -m abspose -b 48 --test \
#        --data_root 'datasets' \
#        --pose_txt 'dataset_test_mixed.txt' --val_pose_txt 'dataset_test_mixed.txt' \
#        --dataset 'WP_dataset' \
#        --network 'PoseNet'\
#        --beta 100 \
#        --resume 'training_output/WP/mixed/beta/ckpt/checkpoint_2000_0.18m_6.47deg.pth' \
#        --odir 'output/' 


python -m abspose -b 48 --test \
       --data_root 'datasets' \
       --pose_txt 'dataset_near.txt' --val_pose_txt 'dataset_near.txt' \
       --dataset 'WP_dataset' \
       --network 'PoseNet'\
       --beta 100 \
       --resume 'training_output/WP/near/beta/ckpt/checkpoint_5000_0.07m_1.89deg.pth' \
       --odir 'output/' 


python -m abspose -b 48 --test \
       --data_root 'datasets' \
       --pose_txt 'dataset_far.txt' --val_pose_txt 'dataset_far.txt' \
       --dataset 'WP_dataset' \
       --network 'PoseNet'\
       --beta 100 \
       --resume 'training_output/WP/near/beta/ckpt/checkpoint_5000_0.07m_1.89deg.pth' \
       --odir 'output/' 


# python -m abspose -b 48 --test \
#        --data_root 'datasets' \
#        --pose_txt 'dataset_train_mixed.txt' --val_pose_txt 'dataset_train_mixed.txt' \
#        --dataset 'WP_dataset' \
#        --network 'PoseNet'\
#        --beta 100 \
#        --resume 'training_output/WP/mixed/beta/ckpt/checkpoint_2000_0.18m_6.47deg.pth' \
#        --odir 'output/' 


# python -m abspose -b 48 --test \
#        --data_root 'datasets' \
#        --pose_txt 'dataset_test_mixed.txt' --val_pose_txt 'dataset_test_mixed.txt' \
#        --dataset 'WP_dataset' \
#        --network 'PoseNet'\
#        --beta 100 \
#        --resume 'training_output/WP/mixed/beta/ckpt/checkpoint_2000_0.18m_6.47deg.pth' \
#        --odir 'output/' 


python -m abspose -b 48 --test \
       --data_root 'datasets' \
       --pose_txt 'dataset_near.txt' --val_pose_txt 'dataset_near.txt' \
       --dataset 'WP_dataset' \
       --network 'PoseLSTM'\
       --beta 100 \
       --resume 'training_output/WP/near/LSTM/ckpt/checkpoint_5000_0.04m_2.07deg.pth' \
       --odir 'output/' 


python -m abspose -b 48 --test \
       --data_root 'datasets' \
       --pose_txt 'dataset_far.txt' --val_pose_txt 'dataset_far.txt' \
       --dataset 'WP_dataset' \
       --network 'PoseLSTM'\
       --beta 100 \
       --resume 'training_output/WP/near/LSTM/ckpt/checkpoint_5000_0.04m_2.07deg.pth' \
       --odir 'output/' 
