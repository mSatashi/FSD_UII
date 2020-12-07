install.packages("ISLR")
library(ISLR)
#membaca file csv
dataCredit <- read.csv(file= "DataPenelitian.csv")

#melihat ukuran matrix dari data csv
dim(dataCredit)#ukuran berupa 9X7
#mengambil head data dari csv. bisa dibilang mengambil sample data dari populasi.

head(dataCredit)
#melihat seluruh data dalam variabel Produktivitas dalam jam

dataCredit$Produktivitas.dalam.jam
#mendapatkan kesimpulan dari semua data yang ada pada dataCredit.
summary(dataCredit)

#mengambil nilai maksimum atau rata-rata atau mediannya saja dari suatu variabel dapat menggunakan perintah
max(dataCredit$Produktivitas.dalam.jam)

#rata-rata mahasiswa yang beraktivitas produktif dengan laptop.
mean(dataCredit$Produktivitas.dalam.jam)

# compute the median
median(dataCredit$Produktivitas.dalam.jam)
# compute the mode
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
getmode(dataCredit$Produktivitas.dalam.jam)
getmode(dataCredit$Kegiatan)


var(dataCredit$Produktivitas.dalam.jam)
sd(dataCredit$Produktivitas.dalam.jam)
# range
range (dataCredit$Produktivitas.dalam.jam)
# percentile 10
quantile (x = dataCredit$Produktivitas.dalam.jam, probs = 0.1)
# percentile 25
quantile (x = dataCredit$Produktivitas.dalam.jam , probs = 0.25)
# quartiles
quantile (x= dataCredit$Produktivitas.dalam.jam, probs =c(0.25, 0.50, 0.75) )
#Untuk menghitung jarak antara Quartil I dan Quartil III, atau biasa disebut Interquartile dapat menggunakan perintah berikut
IQR(dataCredit$Produktivitas.dalam.jam)

# frequency table
#Menjajikan data
table(dataCredit$Kegiatan)
table(dataCredit$Produktivitas.dalam.jam)

# histograms
hist(dataCredit$Produktivitas.dalam.jam)


hist(dataCredit$Kacamata )
#Ringkasan data dapat disajikan juga ke bentuk Boxplot. Berikut perintah untuk menggambar Boxplot
boxplot(x = dataCredit$Produktivitas.dalam.jam, horizontal = T)

# create a new data of income and limit
newData <- data.frame (waktu = dataCredit$Produktivitas.dalam.jam,pr = dataCredit$PR.Selesai)
# plot income against limit
plot (newData $waktu,newData $pr )


# compute the correlation
cor(newData)

#Metode Diskrit Random Variable
# Binomial
#sebuah koin 1000 dilempar 10 kali di mana semua lemparan tidak saling bergantung.
#X adalah jumlah sisi gambar Angklung yang menghadap ke atas setelah dilempar dari
#10 lemparan. Diketahui pula probabilitas gambar Angklung muncul di satu kali lemparan
#adalah 1/3. Maka,

#Nilai probability X=4 berdasarkan Binomial Randome Variabel dapat dihitung menggunakan perintah berikut
dbinom (x = 4, size = 10, prob = 1/3)

#Nilai probability X<=4 dapat dihitung menggunakan Cumulative Probability Function (CMF) dengan perintah berikut
pbinom (q = 4, size = 10, prob = 1/3)
#CMF di atas menghitung probability dengan menjumlahkan P(X=4), P(X=3), P(X=2), P(X=1), dan P(X=0)

#Nilai persentil ke-75 dari distribusi binomial di atas adalah
qbinom (p = 0.75 , size = 10, prob = 1/3)
#Jika ingin mensimulasikan 50 binomial random variables dengan distribusi binomial yang dideskripsikan sebelumnya dapat menggunakan perintah berikut
rbinom (n = 50, size = 10, prob = 1/3)

#Metode Continous Random Varaible
#Continuous Random Varible biasanya akan didekatkan ke distribusi normal.
#Distribusi normal biasanya memiliki bentuk grafik yang berbentuk lonceng secara simeteris.

#Perintah berikut digunakan untuk mencari nilai densitas = 1 pada distribusi normal.
#Kali ini lparameter distrbusi normal yang digunakan adalah nilai rata-rata 1 dan stancart deviasinya 0.1

dnorm (x = 1, mean = 1, sd = 0.1)
#Pada Continuous Random Variable nilai Cumulative Probability Function (CMF) dari X < 0.7 dihitung dengan perintah
# cumulative probability P(< 0.7) , given a standard normal
pnorm (q = 0.7 , mean = 0, sd = 1)

#Nilai persentil ke-25 dapat dihitung dengan perintah
# percentile 25 of a standard normal
qnorm (p = 0.25 , mean = 0, sd = 1)

#Pencuplikan dari 100 data, dengan nilai rata-rata 100 dan strandart deviasi 2 adalah
# sampling from a normal distribution with mean and sd 2
dataNorm <- rnorm (n = 100 , mean = 160 , sd = 2)

#Data di atas ditampilkan ke histogram dengan perintah sederhani berikut
# plot the corresponding histogram
hist (dataNorm)
