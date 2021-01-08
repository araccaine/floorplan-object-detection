out_dir=../models/ssd_mobilenet_floorplan/
mkdir -p $out_dir
python model_main_tf2.py --alsologtostderr --model_dir=$out_dir --checkpoint_every_n=500  \
                         --pipeline_config_path=../models/ssd_mobilenet_floorplan.config \
                         --eval_on_train_data 2>&1 | tee $out_dir/train.log
