function [fitresult, gof] = jav_head11(jav_hx, jav_hy)
%CREATEFIT(JAV_HX,JAV_HY)
%  Create a fit.
%
%  Data for 'jav_head' fit:
%      X Input : jav_hx
%      Y Output: jav_hy
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 02-May-2019 11:31:45 自动生成


%% Fit: 'jav_head'.
[xData, yData] = prepareCurveData( jav_hx, jav_hy );

% Set up fittype and options.
ft = fittype( 'sin1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf];
opts.Normalize = 'on';
opts.StartPoint = [15.5198066119938 1.15453785026298 2.07374447278133];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'jav_head' );
h = plot( fitresult, xData, yData );
legend( h, 'jav_hy vs. jav_hx', 'jav_head', 'Location', 'NorthEast' );
% Label axes
xlabel jav_hx
ylabel jav_hy
grid on


