# python -m abspose -b 50 --test \
#        --data_root '/home/mzins/dev/Learning_Uncertainties/ellipse_from_object/WP/dataset_scene'  \
#        --pose_txt 'dataset_test.txt' \
#        --dataset 'WP_dataset' \
#        --network 'PoseNet'  -rs 256 --crop 224 \
#        --learn_weight \
#        --resume 'output/posenet/test/ckpt/checkpoint_1000_0.26m_6.08deg.pth' \
#        --odir 'output/posenet/test' 


python -m abspose -b 1 --test \
       --data_root '/home/mzins/dev/Learning_Uncertainties/ellipse_from_object/VW/for_posenet'  \
       --pose_txt 'VW_dataset_test_far.txt' \
       --dataset 'VW_dataset' \
       --network 'PoseNet'   \
       --learn_weight \
       --resume '/media/mzins/DATA1/PoseNet/test/ckpt/checkpoint_6000_0.09m_1.11deg.pth' \
       --odir 'output/posenet/test' 
