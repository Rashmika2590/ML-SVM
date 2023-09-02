data = load('iris.txt');
[train , test] = splitData(data);
[train, test] = scaleData(train,test);
rate = knn_with_k(train,test,10);
display(rate);