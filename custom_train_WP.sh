

# Train PoseNet with Beta loss
python -m abspose -b 50 --train -val 500 --epoch 5000 \
       --data_root 'data' \
       --pose_txt 'dataset_train_mixed.txt' --val_pose_txt 'dataset_test_mixed.txt' \
       --dataset 'WP_dataset' \
       --network 'PoseNet'  --pretrained 'weights/googlenet_places.extract.pth' \
       --optim 'Adam' -eps 1.0 -lr 0.001 -wd 0.0001 \
       --beta 100 \
       --odir 'training_output/WP/mixed'
