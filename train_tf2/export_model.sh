model_dir=../models/ssd_mobilenet_floorplan
out_dir=$model_dir/frozen_model
mkdir -p $out_dir

python exporter_main_v2.py \
    --input_type="image_tensor" \
    --pipeline_config_path=$model_dir/pipeline.config \
    --trained_checkpoint_dir=$model_dir/ \
    --output_directory=$out_dir
