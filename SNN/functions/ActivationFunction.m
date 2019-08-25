function [transformedData] = ActivationFunction(prior, type)
    
    function data = sigmoid(prior)
        data = 1.0 ./ (1.0 + exp(-prior));
    end

    function data = relu(prior)
        data = max(prior, 0);
    end

    function data = leaky_relu(prior)
        data = 
    end
    
    switch type
        case 'sigmoid'
            transformedData = sigmoid(prior);
        case 'relu'
            transformedData = relu(prior);
        case 'leaky_relu'
            transformedData = leaky_relu(prior);
    end
    
end