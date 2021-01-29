

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

python -m abspose -b 50 --train -val 500 --epoch 10000 \
       --data_root '/home/mzins/dev/Learning_Uncertainties/ellipse_from_object/VW/for_posenet' \
       --pose_txt 'VW_dataset.txt' --val_pose_txt 'VW_dataset.txt' \
       --dataset 'VW_dataset' \
       --network 'PoseNet'  \
       --optim 'Adam' -eps 1.0 -lr 0.001 -wd 0.0001 \
       --beta 100 \
       --odir '/media/mzins/DATA1/PoseNet/test' 

