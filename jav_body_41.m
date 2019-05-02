function [fitresult, gof] = jav_body_41(jav_b4x, jav_b4y)
%CREATEFIT(JAV_B4X,JAV_B4Y)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : jav_b4x
%      Y Output: jav_b4y
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 02-May-2019 06:21:28 自动生成


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( jav_b4x, jav_b4y );

% Set up fittype and options.
ft = fittype( 'fourier2' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Normalize = 'on';
opts.StartPoint = [0 0 0 0 0 1.05143081492386];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'jav_b4y vs. jav_b4x', 'jav_body_4', 'Location', 'NorthEast' );
% Label axes
xlabel jav_b4x
ylabel jav_b4y
grid on