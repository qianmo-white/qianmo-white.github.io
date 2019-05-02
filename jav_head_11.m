function [fitresult, gof] = jav_head_11(jav_hx, jav_hy)
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

%  由 MATLAB 于 02-May-2019 13:34:34 自动生成


%% Fit: 'jav_head'.
[xData, yData] = prepareCurveData( jav_hx, jav_hy );

% Set up fittype and options.
ft = fittype( 'fourier2' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Normalize = 'on';
opts.StartPoint = [0 0 0 0 0 1.15453785026298];

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


