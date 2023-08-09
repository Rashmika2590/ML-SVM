function Data = invertData(Data,class)

%this function is used to invert the +1 Class and -1 classes

%*********** Interested Class ***************************

indices=(Data(:,end) == class);
Data(indices,end)=1;

%********************** Non Interest class ******************

ind = ~indices;
Data(ind,end)= -1;

%************************************************************