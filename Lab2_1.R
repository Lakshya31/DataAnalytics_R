dataset <- read.csv("defaulter.csv", header = TRUE, quote="\"", stringsAsFactors= TRUE, strip.white = TRUE)
print(dataset)

K = 2

Age_in = 48
Loan_in = 142000

X = dataset[,1]
Y = dataset[,2]

X = X-Age_in
X2 = X*X

Y = Y-Loan_in
Y2 = Y*Y

Dist2 = X2+Y2
Dist = sqrt(Dist2)

D_min = min(Dist)
D_max = max(Dist)
Ans = array(dim=c(1,K))

for(i in 1:K){
  
  min_index = match(c(D_min),Dist)
  
  Dist[min_index[1]] = D_max+1
  D_min = min(Dist)
  
  Ans[i] = dataset[min_index[1],3]
}

count = 0

for(a in Ans){
  if(a==2){
    count = count+1
  }
  if(a==1){
    count = count-1
  }
}

if(count>0){
  print("YES, A DEFAULTER")
}
if(count<0){
  print("NO, NOT A DEFAULTER")
}
if(count==0){
  print("Uncertain")
}
