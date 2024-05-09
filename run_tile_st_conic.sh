gpu=1

python run_infer.py \
        --gpu=$gpu \
        --batch_size=32 \
        --nr_types=2 \
        --type_info_path=type_info_one_class_prelim_vhe.json \
        --model_mode=original \
        --model_path=/nfs/masi/remedilw/paper_journal_nucleus_subclassification/instance_segmentation/hovernet_no_goblet_weights/fold_0.tar \
        --nr_inference_workers=8 \
        --nr_post_proc_workers=16 \
        tile \
        --input_dir=/nfs/masi/remedilw/paper_journal_nucleus_subclassification/instance_segmentation/example_data/conic/conic_patches/images \
        --output_dir=/nfs/masi/remedilw/paper_journal_nucleus_subclassification/instance_segmentation/example_data/conic/example_out \
        --mem_usage=0.1

