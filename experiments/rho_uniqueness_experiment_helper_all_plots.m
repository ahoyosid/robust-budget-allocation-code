%% now we will analyze the output vector rho

% we handle each of these separately so that we can choose appropriate axes
% limits

% % % % figure('Units','inches', ...
% % % %     'Position',[0 0 3.25 1], ...
% % % %     'PaperPositionMode', 'auto');
% % % % set(gcf, 'Renderer', 'painters'); % so that it is vector graphics
% % % % 
% % % % title = {'D-norm', sprintf('C = %0.1g', test_params(1).y_constraint)};
% % % % ax1 = rho_uniqueness_experiment_helper(out_structs(1), title);
% % % % set(ax1, 'YTick',0:0.014:0.028);
% % % % 
% % % % title = {'D-norm', sprintf('C = %0.1g', test_params(2).y_constraint)};
% % % % ax2 = rho_uniqueness_experiment_helper(out_structs(2), title);
% % % % set(ax2, 'YTick',0:0.013:0.026, 'YLim',[0 0.026]);
% % % % 
% % % % title = {'Ellipsoidal', sprintf('C = %0.1g', test_params(3).y_constraint)};
% % % % ax3 = rho_uniqueness_experiment_helper(out_structs(3), title);
% % % % set(ax3, 'YTick',0:0.005:0.01, 'YLim',[0 0.01]);
% % % % 
% % % % title = {'Ellipsoidal', sprintf('C = %0.1g', test_params(4).y_constraint)};
% % % % ax4 = rho_uniqueness_experiment_helper(out_structs(4), title);
% % % % set(ax4, 'YTick',0:0.005:0.01, 'YLim',[0 0.01]);
% % % % 
% % % % subplot_pos{1} = [0.1454    0.3    0.1412    0.5];%0.5574];
% % % % subplot_pos{2} = [0.3515    0.3    0.1412    0.5];
% % % % subplot_pos{3} = [0.5576    0.3    0.1412    0.5];
% % % % subplot_pos{4} = [0.7638    0.3    0.1412    0.5];
% % % % 
% % % % set(subplot(1,4,1,ax1),'Position', subplot_pos{1});
% % % % set(subplot(1,4,2,ax2),'Position', subplot_pos{2});
% % % % set(subplot(1,4,3,ax3),'Position', subplot_pos{3});
% % % % set(subplot(1,4,4,ax4),'Position', subplot_pos{4});
% % % % 
% % % % ylabel(ax1, '$\rho^*_i(j)$ value',...
% % % %     'FontUnits','points',...
% % % %     'interpreter','latex',...
% % % %     'FontSize',6,...
% % % %     'FontName','Times');
% % % % xlabel(ax1, 'Sorted order index percentile',...
% % % %     'FontUnits','points',...
% % % %     'interpreter','latex',...
% % % %     'FontSize',6,...
% % % %     'FontName','Times',...
% % % %     'Units','inches',...
% % % %     'Position',[1.235 -0.15 0]);
figure('Units','inches', ...
    'Position',[0 0 3.25 2.3], ...
    'PaperPositionMode', 'auto');
set(gcf, 'Renderer', 'painters'); % so that it is vector graphics

title = {sprintf('D-norm, C = %0.1g', test_params(1).y_constraint)};
ax1 = rho_uniqueness_experiment_helper(out_structs(1), title);
set(ax1, 'YTick',0:0.014:0.028);

title = {sprintf('Ellipsoidal, C = %0.1g', test_params(3).y_constraint)};
ax2 = rho_uniqueness_experiment_helper(out_structs(3), title);
set(ax2, 'YTick',0:0.005:0.01, 'YLim',[0 0.01]);


title = {sprintf('D-norm, C = %0.1g', test_params(2).y_constraint)};
ax3 = rho_uniqueness_experiment_helper(out_structs(2), title);
set(ax3, 'YTick',0:0.013:0.026, 'YLim',[0 0.026]);


title = {sprintf('Ellipsoidal, C = %0.1g', test_params(4).y_constraint)};
ax4 = rho_uniqueness_experiment_helper(out_structs(4), title);
set(ax4, 'YTick',0:0.005:0.01, 'YLim',[0 0.01]);

%subplot_pos{1} = [0.1454    0.3    0.1412    0.5];%0.5574];
%subplot_pos{2} = [0.3515    0.3    0.1412    0.5];
%subplot_pos{3} = [0.5576    0.3    0.1412    0.5];
%subplot_pos{4} = [0.7638    0.3    0.1412    0.5];
subplot_pos{1} = [0.13   0.5838    0.3347    0.3612];
subplot_pos{2} = [0.5703    0.5838    0.3347    0.3612];
subplot_pos{3} = [0.13    0.11    0.3347    0.3612];
subplot_pos{4} = [0.5703    0.11    0.3347    0.3612];

set(subplot(2,2,1,ax1),'Position', subplot_pos{1});
set(subplot(2,2,2,ax2),'Position', subplot_pos{2});
set(subplot(2,2,3,ax3),'Position', subplot_pos{3});
set(subplot(2,2,4,ax4),'Position', subplot_pos{4});

ylabel(ax1, '$\rho^*_i(j)$ value',...
    'FontUnits','points',...
    'interpreter','latex',...
    'FontSize',6,...
    'FontName','Times');
ylabel(ax3, '$\rho^*_i(j)$ value',...
    'FontUnits','points',...
    'interpreter','latex',...
    'FontSize',6,...
    'FontName','Times');
xlabel(ax3, 'Sorted order index percentile',...
    'FontUnits','points',...
    'interpreter','latex',...
    'FontSize',6,...
    'FontName','Times',...
    'Units','inches');
xlabel(ax4, 'Sorted order index percentile',...
    'FontUnits','points',...
    'interpreter','latex',...
    'FontSize',6,...
    'FontName','Times',...
    'Units','inches');
% legend(ax3, {'$\rho$ values', '$\lambda^*$'},...
%     'location','northwest',...
%     'FontUnits','points',...
%     'interpreter','latex',...
%     'FontSize',6,...
%     'FontName','Times');



print -depsc2 ../plots/rho-all-tall.eps

% %% finally, let's compare the two different suboptimality bounds
% 
% figure('Units','inches', ...
%     'Position',[0 0 3.25 1], ...
%     'PaperPositionMode', 'auto');
% set(gcf, 'Renderer', 'painters'); % so that it is vector graphics
% 
% title = {'D-norm', sprintf('C = %0.1g', test_params(1).y_constraint)};
% ax1 = rho_uniqueness_experiment_helper_hist(out_structs(1), title);
% set(ax1,...
%     'XTick',[0 0.5 1]*1e-4,...
%     'XLim',[0 1e-4],...
%     'XTickLabels',{'0','','$10^{-4}$'});
% 
% title = {'D-norm', sprintf('C = %0.1g', test_params(2).y_constraint)};
% ax2 = rho_uniqueness_experiment_helper_hist(out_structs(2), title);
% %set(ax2, 'YTick',0.12:0.005:0.13, 'YLim',[0.12 0.13]);
% set(ax2,...
%     'XTick',[0 0.5 1]*1e-4,...
%     'XLim',[0 1e-4],...
%     'XTickLabels',{'0','','$10^{-4}$'});
% 
% title = {'Ellipsoidal', sprintf('C = %0.1g', test_params(3).y_constraint)};
% ax3 = rho_uniqueness_experiment_helper_hist(out_structs(3), title);
% %set(ax3, 'YTick',0:0.005:0.01, 'YLim',[0 0.01]);
% 
% title = {'Ellipsoidal', sprintf('C = %0.1g', test_params(4).y_constraint)};
% ax4 = rho_uniqueness_experiment_helper_hist(out_structs(4), title);
% %set(ax4, 'YTick',0:0.005:0.01, 'YLim',[0 0.01]);
% 
% % subplot_pos{1} = [.1454    0.2336    0.1412    0.5574];
% % subplot_pos{2} = [0.3515    0.2336    0.1412    0.5574];
% % subplot_pos{3} = [0.5576    0.2336    0.1412    0.5574];
% % subplot_pos{4} = [0.7638    0.2336    0.1412    0.5574];
% 
% set(subplot(1,4,1,ax1), 'Position', subplot_pos{1});
% set(subplot(1,4,2,ax2),'Position', subplot_pos{2});
% set(subplot(1,4,3,ax3),'Position', subplot_pos{3});
% set(subplot(1,4,4,ax4),'Position', subplot_pos{4});
% 
% ylabel(ax1, 'Count',...
%     'FontUnits','points',...
%     'interpreter','latex',...
%     'FontSize',6,...
%     'FontName','Times');
% xlabel(ax1, 'Suboptimality gap',...
%     'FontUnits','points',...
%     'interpreter','latex',...
%     'FontSize',6,...
%     'FontName','Times',...
%     'Position', [0.000265 -33 0]);
% legend(ax3, {'$x(\lambda_+)$', 'Lagrangian'},...
%     'location','northwest',...
%     'FontUnits','points',...
%     'interpreter','latex',...
%     'FontSize',6,...
%     'FontName','Times');
% 
% %print -depsc2 ../plots/gaps-all.eps