function [fitresult, gof] = jav_b_11(jav_b1x, jav_b1y)
%CREATEFIT(JAV_B1X,JAV_B1Y)
%  Create a fit.
%
%  Data for 'jav_body1' fit:
%      X Input : jav_b1x
%      Y Output: jav_b1y
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 02-May-2019 06:09:32 自动生成


%% Fit: 'jav_body1'.
[xData, yData] = prepareCurveData( jav_b1x, jav_b1y );

% Set up fittype and options.
ft = fittype( 'fourier1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Normalize = 'on';
opts.StartPoint = [0 0 0 2.0733893383319];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'jav_body1' );
h = plot( fitresult, xData, yData );
legend( h, 'jav_b1y vs. jav_b1x', 'jav_body1', 'Location', 'NorthEast' );
% Label axes
xlabel jav_b1x
ylabel jav_b1y
grid on