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



clc
clear
close all
%%
for Function_name = 1:30
nPop = 30 ; % number of population
Max_iter = 500 ; % maximum number of iterations
dim = 30 ; % The value can be 2, 10, 30, 50, 100

%%  select function
% Function_name= 30 ; % function name： 1 - 30
[lb,ub,dim,fobj] = Get_Functions_cec2017(Function_name,dim);




%% Escape algorithm
tic
[ESC_Best_score,ESC_Best_pos,ESC_cg_curve]=ESC(nPop,Max_iter,lb,ub,dim,fobj);
toc
display(['The best optimal value of the objective funciton found by ESC  for F' [num2str(Function_name)],' is: ', num2str(ESC_Best_score)]);
fprintf ('Best solution obtained by ESC: %s\n', num2str(ESC_Best_pos,'%e  '));
%% plot
% figure('Position',[400 200 300 250])
figure


semilogy(ESC_cg_curve,'y','Linewidth',2)

title(['CEC2017-F',num2str(Function_name), ' (Dim=' num2str(dim), ')'])
xlabel('Iteration');
ylabel(['Best score F' num2str(Function_name) ]);
axis tight
grid on
box on
set(gca,'color','none')
legend('ESC')
pause(1)
end
