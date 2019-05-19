function dydt = systemDef(t,z,wd,F,props)
% all the masses should be unity,
% i.e. all props are per unit mass of that dof

m = props(1,1:end-1);
nDOF = length(m);
k = props(2,:);
p = props(3,:);
q = props(4,:);
c = props(5,:);
%% build mats
m = eye(nDOF).*m';
k = Buid_K(k);
p = Buid_K(p);
q = Buid_K(q);
c = Buid_K(c);


x=z(1:nDOF);
dx=z(nDOF+1:2*nDOF);

dydt = [dx;
            F.*cos(wd) - k*x - q*x.^2 - p*x.^3 - c*dx;
            wd];
end