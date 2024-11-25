% 📜 Escape source codes (version 1.0)
% 🌐 Website and codes of ESC: Escape: An optimization method based on crowd evacuation behaviors:
 
% 🔗 https://aliasgharheidari.com/ESC.html

% 👥 Kaichen OuYang, Shengwei Fu, Yi Chen, Qifeng Cai, Ali Asghar Heidari, Huiling Chen

% 📅 Last update: 10 26 2024

% 📧 E-Mail: oykc@mail.ustc.edu.cn, aliasghar68@gmail.com, chenhuiling.jlu@gmail.com
  
% 📜 After use of code, please users cite the main paper on ESC: 
% Escape: An optimization method based on crowd evacuation behaviors
% Kaichen OuYang, Shengwei Fu, Yi Chen, Qifeng Cai, Ali Asghar Heidari, Huiling Chen
% Journal of Artificial intelligence review, 2024

%----------------------------------------------------------------------------------------------------------------------------------------------------%

% 📊 You can use and compare with other optimization methods developed recently:
      - (ESC) 2024: 🔗 https://aliasgharheidari.com/ESC.html
%     - (MGO) 2024: 🔗 https://aliasgharheidari.com/MGO.html
%     - (PLO) 2024: 🔗 https://aliasgharheidari.com/PLO.html
%     - (FATA) 2024: 🔗 https://aliasgharheidari.com/FATA.html
%     - (ECO) 2024: 🔗 https://aliasgharheidari.com/ECO.html
%     - (AO) 2024: 🔗 https://aliasgharheidari.com/AO.html
%     - (PO) 2024: 🔗 https://aliasgharheidari.com/PO.html
%     - (RIME) 2023: 🔗 https://aliasgharheidari.com/RIME.html
%     - (INFO) 2022: 🔗 https://aliasgharheidari.com/INFO.html
%     - (RUN) 2021: 🔗 https://aliasgharheidari.com/RUN.html
%     - (HGS) 2021: 🔗 https://aliasgharheidari.com/HGS.html
%     - (SMA) 2020: 🔗 https://aliasgharheidari.com/SMA.html
%     - (HHO) 2019: 🔗 https://aliasgharheidari.com/HHO.html
%____________________________________________________________________________________________________________________________________________________%



function [best_fitness, best_solution, Convergence_curve] = ESC(N, maxIter, lb, ub, dim,fobj)
 
    % Initialize population
    if max(size(lb)) == 1
        lb = lb * ones(1, dim);
        ub = ub * ones(1, dim);
    end 
    population = repmat(lb, N, 1) + rand(N, dim) .* repmat((ub - lb), N, 1);
    fitness = arrayfun(@(i) fobj(population(i, :)), 1:N);
    [fitness, idx] = sort(fitness);
    population = population(idx, :);
    fitness1 = fitness(1);
    eliteSize = 5;
    fitness_history = zeros(1, maxIter);
    best_solutions = population(1:eliteSize, :);  % Initialize the elite pool with the number of eliteSize
    beta_base = 1.5; % Base beta
    t = 0;
    mask_probability=0.5;
    while t < maxIter
        panicIndex = cos(pi / 2 * (t / (3 * maxIter))); 
        [fitness, idx] = sort(fitness);
        population = population(idx, :);

        a = 0.15;
        b = 0.35;
        
        % Update positions
        populationNew = population;
        if t / maxIter <= 1/2
            for i = 1:N
                % Sort and classify individuals
                calmCount = ceil(round(a * N));
                conformCount = ceil(round(b * N));      
                calm = population(1:calmCount, :);
                conform = population(calmCount + 1:calmCount + conformCount, :);
                panic = population(calmCount + conformCount + 1:end, :);
                calmCenter = sum(calm, 1) / calmCount;
                
                % Randomly select a panic individual
                if size(panic, 1) > 0
                    randomPanicIndex = randi(size(panic, 1));
                    panicIndividual = panic(randomPanicIndex, :);  
                end
                
                % Create a random binary mask to control which dimensions are updated
                mask1 = rand(1, dim) > mask_probability; % mask_probability controls the probability
                

                if i <= calmCount
                    % For the calm group
                    minCalm = min(calm); 
                    maxCalm = max(calm); 
                    randomPositionVector = minCalm + rand(1, dim) .* (maxCalm - minCalm); 
                    weightVector1 = adaptive_levy_weight(beta_base, dim, t, maxIter);   
                    % Apply the mask for partial dimension updates
                    populationNew(i, :) = population(i, :) + ...
                        mask1 .* (weightVector1 .* (calmCenter - population(i,:)) + ...
                        (randomPositionVector - population(i,:) +  randn(1, dim) / 50)) .* panicIndex;
                    
                elseif i <= calmCount + conformCount
                    % For the herding group
                    minConform = min(conform);
                    maxConform = max(conform);
                    randomPositionVector = minConform + rand(1, dim) .* (maxConform - minConform);
                    weightVector1 = adaptive_levy_weight(beta_base, dim, t, maxIter);   
                    weightVector2 = adaptive_levy_weight(beta_base, dim, t, maxIter);
                    mask2 = rand(1, dim) > mask_probability; % Apply the mask for partial dimension updates
                    populationNew(i, :) = population(i, :) + ...
                        mask1 .* (weightVector1 .* (calmCenter - population(i,:)) + ... 
                       mask2 .*(weightVector2 .* (panicIndividual - population(i,:))) + ...
                        (randomPositionVector - population(i,:) +  randn(1, dim) / 50) .* panicIndex);
                else
                    % For the panic group
                    elite_idx = randi(eliteSize);
                    elite = best_solutions(elite_idx, :);
                    randomIndividual = population(randi(N), :);
                    weightVector1 = adaptive_levy_weight(beta_base, dim, t, maxIter);    
                    weightVector2 = adaptive_levy_weight(beta_base, dim, t, maxIter);
                    mask2 = rand(1, dim) > mask_probability; % Apply the mask for partial dimension updates
                    randomPositionVector = elite + weightVector1 .* (randomIndividual - elite);
                    populationNew(i, :) = population(i, :) + ...
                        mask1 .* (weightVector1 .* (elite - population(i,:)) + ...
                        mask2 .*(weightVector2 .* (randomIndividual - population(i,:))) + ...  
                         (randomPositionVector - population(i,:) + randn(1, dim) / 50) .* panicIndex);
                end
            end
        else
            % Second half: Differential with random individuals in the elite pool and random individuals in a population
            for i = 1:N
                elite_idx = randi(eliteSize);
                elite = best_solutions(elite_idx, :);
                random_idx = randi(N);
                random_individual = population(random_idx, :);
                weightVector1 = adaptive_levy_weight(beta_base, dim, t, maxIter);  
                weightVector2 = adaptive_levy_weight(beta_base, dim, t, maxIter);  
                mask1 = rand(1, dim) > mask_probability; % Apply the mask for partial dimension updates
                mask2 = rand(1, dim) > mask_probability; % Apply the mask for partial dimension updates
                
                populationNew(i, :) = population(i, :) + ...
                    mask1 .* (weightVector1 .* (elite - population(i,:)) + ...  
                     mask2 .*(weightVector2 .* (random_individual - population(i,:))));  
            end
        end
        
     
        
        % boundary control
        for i = 1:N
            Flag4ub = populationNew(i,:) > ub;
            Flag4lb = populationNew(i,:) < lb;
            populationNew(i,:) = (populationNew(i,:) .* ~(Flag4ub + Flag4lb)) + ub .* Flag4ub + lb .* Flag4lb;
        end
        
        fitnessNew = arrayfun(@(i) fobj(populationNew(i, :)), 1:N);
        for i = 1:N
            if fitnessNew(i) < fitness(i)
                population(i,:) = populationNew(i,:);
                fitness(i) = fitnessNew(i);
            end
        end

        [fitness, idx] = sort(fitness);
        population = population(idx, :);
        best_solutions = population(1:eliteSize, :);

        [best_fitness, best_idx] = min(fitness);
        best_solution = population(best_idx, :);
        t = t + 1;
        fitness_history(t) = best_fitness; 
    end
    Convergence_curve = [fitness1, fitness_history];
end

function w = adaptive_levy_weight(beta_base, dim, t, maxIter)
    beta = beta_base + 0.5 * sin(pi/2 * t / maxIter); 
    beta = max(min(beta, 2), 0.1);
    sigma = (gamma(1 + beta) * sin(pi * beta / 2) / (gamma((1 + beta) / 2) * beta * 2^((beta - 1) / 2)))^(1/beta);
    u = random('Normal', 0, sigma^2, [1 dim]);
    v = random('Normal', 0, 1, [1 dim]);
    w = abs(u ./ abs(v).^(1/beta)); 
    w = w / (max(w) + eps); 
end
