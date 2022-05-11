python3 python/exporter_main_v2.py --input_type="image_tensor" --pipeline_config_path=../generated_model/pipeline.config --trained_checkpoint_dir=../generated_model/ --output_directory=../generated_model/exported_model
python3 -m tf2onnx.convert --saved-model ../generated_model/exported_model/saved_model --output ../generated_model/exported_onnx/rsa.onnx --opset 13
