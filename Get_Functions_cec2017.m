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



function [lb,ub,dim,fobj] = Get_Functions_cec2017(F,dim)


switch F
    case 1
%         dim=10;
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',1); 
        
    case 2
%         dim=10;
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',2); 
        
    case 3
%         dim=10;
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',3); 
        
        
    case 4
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',4); 
        
    case 5
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',5); 
        
        
    case 6
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',6); 
        
    case 7
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',7); 
        
    case 8
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',8); 
        
    case 9
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',9); 
        
    case 10
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',10); 
        
    case 11
%         dim=10;
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',11); 
        
    case 12
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',12); 
        
    case 13
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',13); 
        
    case 14
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',14); 
        
    case 15
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',15); 
        
    case 16
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',16); 
        
    case 17
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',17); 
        
    case 18
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',18); 
        
    case 19
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',19); 
        
        
    case 20
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',20); 
        
        
    case 21
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',21); 
        
    case 22
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',22); 
        
    case 23
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',23); 
        
    case 24
%         dim=10;
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',24); 
        
    case 25
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',25); 
    case 26
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',26); 
    case 27
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',27); 
    case 28
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',28); 
    case 29
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',29); 
    case 30
%         dim=10;
        
        lb=-100*ones(1,dim);
        ub=100*ones(1,dim);
        fobj = @(x) cec17_func(x',30); 
        
end

end
