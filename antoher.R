cars
x = data.matrix(cars['speed'])
y= data.matrix(cars['dist'])
# B1=sum((xi-mean(x)) * (yi-mean(y))) / sum((xi - mean(x))^2)
#z = data.matrix(x[0])
x_mean = mean(x)
y_mean = mean(y)

x_error= x-x_mean
y_error = y-y_mean

xy_mult = x_error*y_error

x_error_squared = x_error*x_error
B1 = sum(xy_mult)/sum(x_error_squared)

B0 = y_mean - B1*x_mean

print(B0)
print(B1)