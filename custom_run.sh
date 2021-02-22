

# Train PoseNet with Beta loss
# python -m abspose -b 50 --train -val 10 --epoch 10000 \
#        --data_root '/home/mzins/dev/Learning_Uncertainties/ellipse_from_object/WP/dataset_scene' \
#        --pose_txt 'dataset_train.txt' --val_pose_txt 'dataset_train.txt' \
#        --dataset 'WP_dataset' \
#        --network 'PoseNet'  \
#        --optim 'Adam' -eps 1.0 -lr 0.001 -wd 0.0001 \
#        --beta 100 \
#        --odir 'output/posenet/test' 


#--resume 'output/posenet/test/ckpt/checkpoint_1000_853.44m_39.91deg.pth' \

# python -m abspose -b 48 --train -val 10 --epoch 100 \
#        --data_root 'dataset' \
#        --pose_txt 'posenet_7-Scenes_dataset_seq_01_03_04_05_06.txt' --val_pose_txt 'posenet_7-Scenes_dataset_seq_02.txt' \
#        --dataset '7-Scenes_dataset' \
#        --network 'PoseNet'  --pretrained 'weights/googlenet_places.extract.pth' \
#        --optim 'Adam' -eps 1.0 -lr 0.001 -wd 0.0001 \
#        --beta 100 \
#        --odir 'training_output'


python -m abspose -b 48 --test \
       --data_root 'dataset' \
       --pose_txt 'posenet_7-Scenes_dataset_seq_02.txt' --val_pose_txt 'posenet_7-Scenes_dataset_seq_02.txt' \
       --dataset '7-Scenes_dataset' \
       --network 'PoseLSTM'\
       --learn_weighting  --homo_init 0.0 -3.0 \
       --resume 'training_output_trained_01_04_06/lstm/ckpt/checkpoint_500_0.29m_9.52deg.pth' \
       --odir 'output/lstm' 
