			                        	

				
# INTRODUCTION :

The data provided contains two columns namely the states of United States of America and the median salaries of the states respectively. The overall median of the whole country is provided, and it is 55520. The mean of all the median salaries of the states is 56356.5098. 

The data has been segregated based on whether the states belong to the southern states or not. The southern states include states like Alabama, Arkansas, Delaware, Florida, Georgia, Kentucky, Louisiana, Maryland, Mississippi, North Carolina, Oklahoma, South Carolina, Tennessee, Texas, Virginia, West Virginia, and the federal district of Columbia (D.C.).
The mean of the median salaries of the southern states is 50935.75. The mean of the median salaries of other states is 58834.5714. The mean of the median salaries of the southern states is 50935.75.




Table 1: Summary of the data
 
<img src="https://user-images.githubusercontent.com/81670865/177605459-a55d1db5-5b2c-4ad6-9c15-216b442e4674.png" width="700">

We can see from the summary of the data that the mean of the salaries is around 56357 and the median is 55227.

Density Plot of Salaries: We can observe that the curve is bell shaped and almost normal. There are more than 30 observations which means the curve would be normal anyway.

![image](https://user-images.githubusercontent.com/81670865/177605528-1c6fe3f6-1653-48fa-8256-f02866e4161b.png)

Figure 3: Density Plot of Salaries


Plot of States VS Salaries: This plot shows us the states with respect to their median salaries. We can see that most of the southern states lie in the lower region of the graph. 


 ![image](https://user-images.githubusercontent.com/81670865/177605584-7c88daea-fb39-406e-bed6-21f478bdc949.png)

Figure 4:Plot of States VS Salaries
Hypothesis Test 1: This test checks the validity of the data. The hypothesis is whether the sample parameter of sample median salaries of the United States is relevant and coincides with the provided sample median.

H0:     µ (median salaries) = µ (provided mean/median)
H1:     µ (median salaries) ≠ µ (provided mean/median)

![image](https://user-images.githubusercontent.com/81670865/177605681-c88dd867-3e42-4a08-b9cc-000c3d21d054.png)

Table 2:Hypothesis Test 1
 
Hypothesis Test 2: This test checks whether the mean of the median salaries of the southern states is equal to the provided median or less than that.

H0:      µsouthern (median salaries) = µ (provided mean/median)
H1: µsouthern (median salaries) < µ (provided mean/median)

![image](https://user-images.githubusercontent.com/81670865/177605707-4ece9ac1-d21c-48f3-942d-3d08673a6c29.png)

  Table 3: Hypothesis Test 2
 

Hypothesis Test 3: This test checks whether the median salaries of the southern states are equal to the provided median or less than that. The only exception is we have removed District of Columbia from the data frame.

H0:      µsouthern (median salaries) = µ (provided mean/median)
H1: µsouthern (median salaries) < µ (provided mean/median)

![image](https://user-images.githubusercontent.com/81670865/177605754-987cee3b-c432-41a1-857c-e59a1b793289.png)

        Table 4: Hypothesis Test 3
 


Hypothesis Test 4: This test checks whether the median salaries of the southern states are equal to the calculated median salary from the provided data or less than that.	


H0:      µsouthern (median salaries) = µ (calculated mean/median)
H1: 	 µsouthern (median salaries) < µ (calculated mean/median)

![image](https://user-images.githubusercontent.com/81670865/177605774-c6c04d98-ea56-4a21-a477-d1b33484973f.png)

			Table 5: Hypothesis Test 4
 



Hypothesis Test 5: This test checks whether the median salaries of the northern states are equal to the provided median or greater than that.


H0:      µnorthern (median salaries) = µ (calculated mean/median)
H1: 	 µnorthern (median salaries) < µ (calculated mean/median)

![image](https://user-images.githubusercontent.com/81670865/177605795-663f3e43-817c-42ad-92bd-4a5a7537622e.png)


Table 6: Hypothesis Test 5	

 
INFERENCES

The Density plot (Figure 3) shows us that the distribution is bell shaped and normal. The degree of freedom of the data is 51-1=50. The figure also shows us that the curve tends to decrease at a slower rate than when it was rising which means that as the salary increases the distribution is more spread out.
states vs Salaries Plot (Figure 2) shows us that the southern states lie in the lower region of the salary bracket. This makes us question whether the southern states are still lagging in development and economy compared to other states. We will now proceed to test whether some of the questions arising in our head are consistent with our sample or not.
The first test (Hypothesis Test 1) is to validate the data and confirm whether the provided observations and the provided median of the country are consistent.
The second test and third (Hypothesis Test 2 and 3) show us that we can predict with 95% confidence that the salaries of the southern states is the same as the provided salary of the country. The second test includes D.C., and the third test excludes it. For the second test we get a p value of 0.053 which is greater than α=0.05; which means we will fail to reject the null hypothesis which says the mean of the salaries in southern states is equal to the provided parameter. But for the second test when we remove D.C. from the equation, we get a p value of 0.028, which means we will reject our null hypothesis and say that the salaries of the southern states are less than the provided parameter.

The fourth test (Hypothesis Test 4) checks whether the salaries of the southern state are equal to or less than the calculated median from the provided data. We get a p value of 0.036, which means we will reject the null hypothesis and say that the true mean is less than the calculated median of the salaries.
The fifth test (Hypothesis Test 5) shows us that the salaries of states apart from the southern states have a salary which is greater than the provided mean of the country. We get a p value of 0.00447 which means we will reject the null hypothesis and go on to say that the salaries of other states are greater than the provided parameter. 



# R
Conduct a one-sample t-tests for income in southern states. Use the t.test( ) in R. Provide the null and the alternative hypothesis for each test. Should this be a one or a two-sided test? Explain/justify your choice. Provide the test results and an interpretation of your results, in light of your choice for a one or two-sided test
