python -m abspose -b 50 --test \
       --data_root 'data'  \
       --pose_txt 'dataset_test.txt' \
       --dataset 'WP_dataset' \
       --network 'PoseNet' \
       --learn_weight \
       --resume 'output/posenet/test/ckpt/checkpoint_5000_0.03m_1.74deg.pth' \
       --odir 'output/posenet/test' 
