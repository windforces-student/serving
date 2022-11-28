python3 main_timegan.py \
    --data_name electricity \
    --seq_len 24 \
    --module gru \
    --hidden_dim 24 \
    --num_layer 3 \
    --iteration 50000 \
    --batch_size 128 \
    --metric_iteration 10