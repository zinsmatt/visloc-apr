

# python -m abspose -b 48 --test \
#        --data_root 'datasets' \
#        --pose_txt 'VW_dataset_test_08.txt' --val_pose_txt 'VW_dataset_test_08.txt' \
#        --dataset 'VW_dataset' \
#        --network 'PoseLSTM'\
#        --resume 'training_output_VW/LSTM/ckpt/checkpoint_3000_0.10m_1.72deg.pth' \
#        --odir 'output_VW/' 




# python -m abspose -b 48 --test \
#        --data_root 'datasets' \
#        --pose_txt 'VW_dataset_test_09.txt' --val_pose_txt 'VW_dataset_test_09.txt' \
#        --dataset 'VW_dataset' \
#        --network 'PoseLSTM'\
#        --resume 'training_output_VW/LSTM/ckpt/checkpoint_3000_0.10m_1.72deg.pth' \
#        --odir 'output_VW/' 




python -m abspose -b 48 --test \
       --data_root 'datasets' \
       --pose_txt 'VW_dataset_test_far.txt' --val_pose_txt 'VW_dataset_test_far.txt' \
       --dataset 'VW_dataset' \
       --network 'PoseLSTM'\
       --resume 'training_output_VW/LSTM/ckpt/checkpoint_3000_0.10m_1.72deg.pth' \
       --odir 'output_VW/' 
