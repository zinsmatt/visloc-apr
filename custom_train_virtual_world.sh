# Train PoseNet with LSTM loss
python -m abspose -b 50 --train -val 500 --epoch 6000 \
       --data_root 'datasets' \
       --pose_txt 'VW_dataset_train.txt' --val_pose_txt 'VW_dataset_train.txt' \
       --dataset 'VW_dataset' \
       --network 'PoseLSTM'  --pretrained 'weights/googlenet_places.extract.pth' \
       --optim 'Adam' -eps 1.0 -lr 0.0005 -wd 0.0001 \
       --learn_weighting  --homo_init 0.0 -3.0 \
       --odir 'training_output_VW/LSTM'
