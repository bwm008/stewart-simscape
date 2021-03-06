function [P, R] = forwardKinematicsApprox(stewart, args)
% forwardKinematicsApprox - Computed the approximate pose of {B} with respect to {A} from the length of each strut and using
%                           the Jacobian Matrix
%
% Syntax: [P, R] = forwardKinematicsApprox(stewart, args)
%
% Inputs:
%    - stewart - A structure with the following fields
%        - kinematics.J  [6x6] - The Jacobian Matrix
%    - args - Can have the following fields:
%        - dL [6x1] - Displacement of each strut [m]
%
% Outputs:
%    - P  [3x1] - The estimated position of {B} with respect to {A}
%    - R  [3x3] - The estimated rotation matrix that gives the orientation of {B} with respect to {A}

arguments
    stewart
    args.dL (6,1) double {mustBeNumeric} = zeros(6,1)
end

assert(isfield(stewart.kinematics, 'J'),   'stewart.kinematics should have attribute J')
J = stewart.kinematics.J;

X = J\args.dL;

P = X(1:3);

theta = norm(X(4:6));
s = X(4:6)/theta;

R = [s(1)^2*(1-cos(theta)) + cos(theta) ,        s(1)*s(2)*(1-cos(theta)) - s(3)*sin(theta), s(1)*s(3)*(1-cos(theta)) + s(2)*sin(theta);
     s(2)*s(1)*(1-cos(theta)) + s(3)*sin(theta), s(2)^2*(1-cos(theta)) + cos(theta),         s(2)*s(3)*(1-cos(theta)) - s(1)*sin(theta);
     s(3)*s(1)*(1-cos(theta)) - s(2)*sin(theta), s(3)*s(2)*(1-cos(theta)) + s(1)*sin(theta), s(3)^2*(1-cos(theta)) + cos(theta)];
