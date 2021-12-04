function predict_label = predictgroup(classifiers,sample)
%PREDICTGROUP 使用一组训练好的二分类分类器进行多分类预测
%   使用一组训练好的二分类分类器进行多分类预测
%   classifiers cell数组，好的二分类分类器
%   sample 用于预测的样本

[N,~]=size(sample);
Scores = zeros(N,numel(classifiers));
for j = 1:numel(classifiers)
    [~,score] = predict(classifiers{j},sample);
    Scores(:,j) = score(:,2); % Second column contains positive-class scores
end
[~, predict_label] = max(Scores,[],2);

end

