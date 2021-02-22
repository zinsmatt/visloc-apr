

# # Train PoseNet with Beta loss
# python -m abspose -b 50 --train -val 100 --epoch 2000 \
#        --data_root 'datasets' \
#        --pose_txt 'dataset_train_mixed.txt' --val_pose_txt 'dataset_test_mixed.txt' \
#        --dataset 'WP_dataset' \
#        --network 'PoseNet'  --pretrained 'weights/googlenet_places.extract.pth' \
#        --optim 'Adam' -eps 1.0 -lr 0.001 -wd 0.0001 \
#        --beta 100 \
#        --odir 'training_output/WP/mixed/beta'


# # Train PoseNet with Beta loss
# python -m abspose -b 50 --train -val 100 --epoch 2000 \
#        --data_root 'datasets' \
#        --pose_txt 'dataset_train_mixed.txt' --val_pose_txt 'dataset_test_mixed.txt' \
#        --dataset 'WP_dataset' \
#        --network 'PoseLSTM'  --pretrained 'weights/googlenet_places.extract.pth' \
#        --optim 'Adam' -eps 1.0 -lr 0.0005 -wd 0.0001 \
#        --learn_weighting  --homo_init 0.0 -3.0 \
#        --odir 'training_output/WP/mixed/LSTM'



# Train PoseNet with Beta loss
python -m abspose -b 50 --train -val 1000 --epoch 5000 \
       --data_root 'datasets' \
       --pose_txt 'dataset_near.txt' --val_pose_txt 'dataset_near.txt' \
       --dataset 'WP_dataset' \
       --network 'PoseNet'  --pretrained 'weights/googlenet_places.extract.pth' \
       --optim 'Adam' -eps 1.0 -lr 0.001 -wd 0.0001 \
       --beta 100 \
       --odir 'training_output/WP/near/beta'


# Train PoseNet with LSTM loss
python -m abspose -b 50 --train -val 1000 --epoch 5000 \
       --data_root 'datasets' \
       --pose_txt 'dataset_near.txt' --val_pose_txt 'dataset_near.txt' \
       --dataset 'WP_dataset' \
       --network 'PoseLSTM'  --pretrained 'weights/googlenet_places.extract.pth' \
       --optim 'Adam' -eps 1.0 -lr 0.0005 -wd 0.0001 \
       --learn_weighting  --homo_init 0.0 -3.0 \
       --odir 'training_output/WP/near/LSTM'
