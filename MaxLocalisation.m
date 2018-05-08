run study_architecture.m
format short
%% tx
tx=[leg_radius', max_disp(:, 1)]';
tx1=find(tx(2,:)==max(tx(2,:)));
tx2=max(tx(2,:));
ltx=[tx1,tx2]

%% ty
ty=[leg_radius', max_disp(:, 2)]';
ty1=find(ty(2,:)==max(ty(2,:)));
ty2=max(ty(2,:));
lty=[ty1,ty2]

%% tz
tz=[leg_radius', max_disp(:,3)]';
tz1=find(tz(2,:)==max(tz(2,:)));
tz2=max(tz(2,:));
ltz=[tz1,tz2]

%% rx
rx=[leg_radius', max_disp(:,4)]';
rx1=find(rx(2,:)==max(rx(2,:)));
rx2=max(rx(2,:));
lrx=[rx1,rx2]

%% rx
ry=[leg_radius', max_disp(:,5)]';
ry1=find(ry(2,:)==max(ry(2,:)));
ry2=max(ry(2,:));
lry=[ry1,ry2]

%% rx
rz=[leg_radius', max_disp(:,6)]';
rz1=find(rz(2,:)==max(rz(2,:)));
rz2=max(rz(2,:));
lrz=[rz1,rz2]

%% kx
kx=[leg_radius', stiffness(:, 1, 1)]';
kx1=find(kx(2,:)==max(kx(2,:)));
kx2=max(kx(2,:));
lkx=[kx1,kx2]

%% ky
ky=[leg_radius', stiffness(:, 2, 2)]';
ky1=find(ky(2,:)==max(ky(2,:)));
ky2=max(ky(2,:));
lky=[ky1,ky2]

%% kz
kz=[leg_radius', stiffness(:, 3, 3)]';
kz1=find(kz(2,:)==max(kz(2,:)));
kz2=max(kz(2,:));
lkz=[kz1,kz2]

%% mx
mx=[leg_radius', stiffness(:, 4, 4)]';
mx1=find(mx(2,:)==max(mx(2,:)));
mx2=max(mx(2,:));
lmx=[mx1,mx2]

%% my
my=[leg_radius', stiffness(:, 5, 5)]';
my1=find(my(2,:)==max(my(2,:)));
my2=max(my(2,:));
lmy=[my1,my2]

%% my
mz=[leg_radius', stiffness(:, 6, 6)]';
mz1=find(mz(2,:)==max(mz(2,:)));
mz2=max(mz(2,:));
lmz=[mz1,mz2]