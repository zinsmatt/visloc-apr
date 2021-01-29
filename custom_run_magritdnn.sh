

# Train PoseNet with Beta loss
python -m abspose -b 50 --train -val 500 --epoch 30000 \
       --data_root 'data' \
       --pose_txt 'dataset_train_mixed.txt' --val_pose_txt 'dataset_test_mixed.txt' \
       --dataset 'WP_dataset' \
       --network 'PoseNet'  \
       --optim 'Adam' -eps 1.0 -lr 0.005 -wd 0.0001 \
       --learn_weighting \
       --beta 100 \
       --resume 'output/posenet/test/ckpt/checkpoint_5000_0.14m_6.62deg.pth' \
       --odir 'output/posenet/test' 
