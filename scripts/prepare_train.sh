python3 python/xml_to_csv.py --annot_dir ../train_images/annotations --out_csv_path ../train_images/generated_annotation_train.csv
python3 python/xml_to_csv.py --annot_dir ../test_images/annotations --out_csv_path ../test_images/generated_annotation_test.csv
python3 python/generate_tfrecord.py --path_to_images ../train_images/images --path_to_annot ../train_images/generated_annotation_train.csv --path_to_label_map ../labelmap.pbtxt --path_to_save_tfrecords ../generated_train_input/train.tfrecord
python3 python/generate_tfrecord.py --path_to_images ../test_images/images --path_to_annot ../test_images/generated_annotation_test.csv --path_to_label_map ../labelmap.pbtxt --path_to_save_tfrecords ../generated_train_input/test.tfrecord
