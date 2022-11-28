predictive_score = list()
for tt in range(metric_iteration):
    temp_pred = predictive_score_metrics(ori_data, generated_data)
    predictive_score.append(temp_pred)

print('Predictive score: ' + str(np.round(np.mean(predictive_score), 4)))

docker run -t --rm -p 8501:8501 -v /home/henderson1/Repository/TimeGAN/models/production:/models/production -e CUDA_VISIBLE_DEVICES=2 -e MODEL_NAME=production tensorflow/serving:1.15.0-gpu
