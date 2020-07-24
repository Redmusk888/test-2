using Plots
gr();
# %%
N = 10000;
x = zeros(1,N)
y = zeros(1,N)

for a = 2:N
    r=rand(0:2)
    if r==0
        x[a]=0.5x[a-1];
        y[a]=0.5y[a-1];
    elseif r==1
        x[a]=0.5x[a-1]+0.25;
        y[a]=0.5y[a-1]+sqrt(3)/2;
    elseif r==2
        x[a]=0.5x[a-1]+2;
        y[a]=0.5y[a-1];
    end
end


scatter!( x,
         y,
         color=:green,
         title="sierpinski's triangle",
         legned=false)
