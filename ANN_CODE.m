I = input';
T = output';
net=newff(minmax(I),[3,5,1],{'logsig','tansig','purelin'},'trainlm');
net = init(net); % Used to initialize the network (weight and biases)
net.trainParam.show =1; % The result of error (mse) is shown at each iteration (epoch)
net.trainParam.epochs = 10000; % Maximum limit of the network training iteration process(epoch)
net.trainParam.goal =1e-12; % Stopping criterion based on error (mse) goal
net=train(net,I,T); % Start training the network