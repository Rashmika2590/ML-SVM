function rate = knn_with_k(trainData, testData, k)
% Perform k-NN classification and return the accuracy

    % Initialize the classification model
    mdl = fitcknn(trainData(:, 1:end-1), trainData(:, end), 'NumNeighbors', k);

    % Make predictions on the test data
    predictions = predict(mdl, testData(:, 1:end-1));

    % Calculate classification accuracy
    rate = sum(predictions == testData(:, end)) / numel(testData(:, end)) * 100;
end

