
############## 울신의대 대학원 ##############
################ 2017.09.13 #################

# R은 대문자, 소문자를 구분한다.
# #이 처음에 있는 행은 R이 실행하지 않는다.
# R 함수는 "()", 데이터는 "[]" 사용.
# R 자체의 help의 설명을 잘 활용해야 한다.
 # help(matplot)
 # ?(matplot)
 # args(matplot) : 함수의 간단한 활용방법
 

#################################################
##---------------------------------------------##
##               Data Types                    ##
##---------------------------------------------##
#################################################

#################################################
##                  Data Types                 ##
#################################################

############### Data Types 종류 #################

3         # numeric
"3"       # character
"UseR!"   # character
1+3i      # complex
1>3       # logical


############### Data Types 보기 #################

mode(3)
mode("3")
mode("UseR!")
mode(1+3i)
mode(1>3)


#################################################
##---------------------------------------------##
##                Data Structure               ##
##---------------------------------------------##
#################################################

# Vector: uni-mode
# Matrix: uni-mode
# Array: uni-mode

# List: multi-mode
# Data frame: multi-mode


#################################################
##                   Vector                    ##
#################################################

################ Vector 만들기 ##################

c(1,2,3,4)
c("a","b","c")
c(1,2,"a")      # 숫자도 character로 변환됨.


seq(1, 6)
seq(1, 6, by=2)
seq(1, 15, by = pi)
seq(1, 6, length=8)
seq(3, -3)
1:6
seq(6)


rep("CONTROL",3)
rep(1:3, 3)
rep(1:3, c(3,3,2))
rep(1:3, 2:4)
rep(1:3, rep(3,3))
rep(1:3, each=3)


################### Assign ######################

# <- or =

vec1 <- c(1,2,3,4)
vec1
vec2 = c(5,6,7,8)
vec2
vec <- c(vec1, vec2)
vec

############## Vector Attribute #################

mode(vec)
head(vec)
length(vec)
str(vec)
summary(vec)
names(vec) <- c("a","b","c","d","e","f","g","h") # names function으로 이름 assign
vec

################# Subscripting ##################

vec[1]              # Positive: indices of elements to return
vec[6]
vec[c(1,6)]
vec[5:length(vec)]
vec[-1]             # Negative: indices of elements to omit
vec[-seq(1:4)]
vec[-length(vec)]
vec[]               # Blank: return all elements
letters             # internal data in R
letters[1:3]


################ Logical value ##################

vec <- c(6,4,5,3,9,7,1,8,2,10)   # overwrite vec vector
names(vec) <- letters[1:length(vec)]
vec > 6
vec[vec > 6]                     # only "TRUE" values
vec[vec <= 4]
vec[vec == 5]                    # equal
vec[vec != 5]                    # not equal
vec[vec > 2 & vec < 8]           # and
vec[vec <= 2 | vec >=7]          # or
vec["a"]                         # subscript by "name"
vec[c("a","f")]




#################################################
########             Matrix                ######
#################################################

################ Matrix 만들기 ##################

matrix(1:9, nrow=3, ncol=3)
matrix(1:9, nrow=3)                   # No need for ncol
args(matrix)
matrix(1:9, nrow=3, byrow=T)          # reading by row
matrix(5, nrow=3, ncol=3)             # repetition of 5


rbind(1:3,4:6,7:9)                    # row bind
cbind(1:3,4:6,7:9)                    # column bind
cbind(1:3,4:6,1)                      # repetition of 1


############## Matrix Attribute #################

mat <- cbind(1:5,c(66,68,72,89,68),c(32,39,24,28,20))
nrow(mat)
ncol(mat)
dim(mat)
length(mat)       # total No. of elements
mode(mat)
class(mat)
dimnames(mat)
dimnames(mat) <- list(c("a","b","c","d","e"),c("ID","WT","AGE"))


################# Subscripting ##################

mat[1,2]                # 1st row, 2nd column
mat[1,]                 # 1st row, all columns
mat[c(2,4),]            # 2nd and 4th row, all columns
mat[,3]                 # all rows, 3rd column
mat[-1,-2]              # all but the 1st row, all but the 2nd column
mat[]                   # all columns, all rows
mat["b","ID"]
mat[,c("ID","WT")]      # subset by names


################ Logical value ##################

mat[,2] > 70
mat[mat[,2] > 70,]
mat[mat[,"WT"] > 70,][,"ID"]
mat[mat[,"WT"] > 70,][,"ID", drop=F]    # matrix 유지




#################################################
##                   Array                     ##
#################################################

################ Array 만들기 ###################

arr <- array(1:12, dim=c(2,3,2))
arr

arr1 <- array(1:36, c(2,3,2,3))
arr1


############## Array Attribute ##################

length(arr)                     # total number of arrays
dim(arr)
mode(arr)
class(arr)


#################################################
##                    List                     ##
#################################################

#### 여러 종류의 데이터를 담는 유용한 그릇####

################ List 만들기 ##################

lst <- list(vec, mat, LETTERS[1:10])
lst
lst <- list(X=vec, Y=mat, Z=LETTERS[1:10])
lst


############## List Attribute #################

length(lst)
names(lst)
names(lst)[2]
str(lst)
mode(lst)
class(lst)


################# Subscripting ##################

lst[1]
lst[2]
lst[3]
lst$X
lst$Y
lst$Z             # matrix
class(lst$Y)
lst$Y[,1]
lst$Y[,1, drop=F]
lst$Y[,c("ID","AGE")]


############# Addition of Elements ##############

lst$A <- rep("A",5)               # vector 추가
lst
lst$ALPHA <- matrix(letters[1:9], nrow=3, ncol=3)  # matrix 추가
lst



#################################################
##                Data Frame                   ##
#################################################

# 각 구성요소가 이름을 지니고 있으며 동일한 길이의 벡터로 구성된 리스트

############## Data frame 만들기 ################

df1 <- data.frame(1:5, c(66,48,72,89,55), c(32,39,24,28,20), c(1,2,1,1,2))
df1
names(df1) <- LETTERS[1:4]
df1 <- data.frame(ID=1:5, WT=c(66,48,72,89,55), AGE=c(32,39,24,28,20), SEX=c(1,2,1,1,2))
df1
df2 <- as.data.frame(mat)         # data.frame from other data structure
df2

############ Data Frame Attribute ###############

head(df1)
head(df1, 3)
length(df1)
names(df1)
colnames(df1)
rownames(df1)
names(df1)[3]


################# Subscripting ##################

df1$ID                    # extract "ID" column, vector
df1[,1]
df1[df1$ID <= 3,]         # All the data of the first 3 subjects
df1$AGE[df1$ID <= 3]      # Age data of the first 3 subjects

attach(df1)               # name으로 자료에 access 가능하게 함
AGE[ID < 3]
detach(df1)               # attach 해제

subset(df1, AGE>=25)      # subset function
subset(df1, AGE>=25, select = c(ID, AGE, SEX))
subset(df1, AGE>=25, c(ID, WT, SEX))
subset(df1, AGE>=25, -AGE)


############# Addition of Elements ##############

df1$HT <- c(180,165,175,172,163)
df1


#################################################
##            Basic Calculations               ##
#################################################

2+2
4-2
2*3
6/3
10^3
sqrt(4)
abs(-5)
log(exp(1))
log(10, 10)
exp(1)


#################################################
##          Vectorized Calculations            ##
#################################################

a <- 1:5
a + 2
a - 2
a*3
a/5
a^3
sqrt(a)
abs(-a)
log(exp(a))
log(a, 10)
exp(a)

mat-2

df1-3


conc1 <- c(0,10,20,40,30,20,10)
conc2 <- c(0,20,40,80,60,40,20)
conc <- conc1 + conc2
conc
conc <- conc1^2              # Overwrite
conc
time <- c(0,0.5,1,2,4,8,12,24)
p    <- c(dose=50, Cl=0.5, V=10)
conc <- 50/0.5*exp(-0.5/10*time)
conc
conc <- p[1]/p[2]*exp(-p[2]/p[3]*time)
conc
conc <- p["dose"]/p["Cl"]*exp(-p["Cl"]/p["V"]*time)



#################################################
##---------------------------------------------##
##                  R 함수들                   ##
##---------------------------------------------##
#################################################

#################################################
##          기본적 숫자 관련 함수들            ##
#################################################

mean(vec)
median(vec)
min(vec)
max(vec)
range(vec)
sd(vec)
var(vec)
sum(vec)
length(vec)
quantile(vec,0.5)
quantile(vec,0.95)
pi
round(pi,2)
sqrt(100)
order(c(3,2,5,10,10))

exp(sum(log(vec)) / length(vec)) # Geometric mean



