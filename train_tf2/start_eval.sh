# uncomment this to run the test on CPU
export CUDA_VISIBLE_DEVICES="-1"

out_dir=../models/ssd_mobilenet_floorplan/
mkdir -p $out_dir
python model_main_tf2.py --alsologtostderr --model_dir=$out_dir \
                         --pipeline_config_path=../models/ssd_mobilenet_floorplan.config \
                         --checkpoint_dir=$out_dir  2>&1 | tee $out_dir/eval.log
