
% Plotting the number of iterations to 1
% For Collatz Conjecture

% The Set of Integer
m=1000000;

% Initializing the counter
counter=zeros(1,m);

% The Integer loop
for i=1:m
    
    % Inner loop iterate
    n=i;
    
    % Inner loop for counting the number
    % of iterations
    while(n~=1)
        
        % If odd
        if(mod(n,2)~=0)
            
            % Multiply by 3 and add 1
            n=((3*n)+1);
            
        else
            
            % If even
            % Divide by 2
            n=n/2;
            
        end
        
        % Increase the counter
        counter(i)=counter(i)+1;
        
    end
    
end

% Plot
figure
hold on
grid on
plot(1:m,counter,'k*');
hold off
