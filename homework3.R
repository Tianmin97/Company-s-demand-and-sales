company <- data.frame(Company_ID_Number = 1:110, 
                      Product_ID_Number = paste("A", 330:439, sep = ""),
                      Customer_Demand = sample(x = 1:20, size = 110,replace = T),
                      Sale_Won = runif(110, min = 100000, max = 10000000))
print(company)              
attach(company)
demand_avg <- lapply(company[3], mean)
print(demand_avg)
sales_avg <- lapply(company[4], mean)
print(sales_avg)
company[which(Customer_Demand > demand_avg), ]
company[which(Sale_Won > sales_avg), ]
