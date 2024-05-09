folds=(0)
gpu=1
gob_or_nots=("with_goblet")

for fold in "${folds[@]}"; do
	for gob_or_not in "${gob_or_nots[@]}"; do

		python run_infer.py \
		--gpu=$gpu \
		--nr_types=2 \
		--type_info_path=type_info_one_class_prelim_vhe.json \
		--batch_size=32 \
		--model_mode=original \
		--model_path="/nfs/masi/remedilw/paper_journal_nucleus_subclassification/instance_segmentation/hovernet_"$gob_or_not"_weights/fold_"$fold".tar" \
		--nr_inference_workers=8 \
		--nr_post_proc_workers=16 \
		wsi \
		--input_dir=/nfs/masi/remedilw/paper_journal_nucleus_subclassification/instance_segmentation/example_data/wsi_vhe \
		--output_dir=/nfs/masi/remedilw/paper_journal_nucleus_subclassification/instance_segmentation/example_data/example_output \
		--input_mask_dir=/nfs/masi/remedilw/paper_journal_nucleus_subclassification/instance_segmentation/example_data/wsi_mask \
		--proc_mag=20 \
		--save_thumb \
		--save_mask

	done
done
