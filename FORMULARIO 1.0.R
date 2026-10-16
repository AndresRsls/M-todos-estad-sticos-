MÉTODOS ESTADÍSTICOS — CHAPTER 1

FORMULARIO COMPLETO

Basado en el material de clase: Chapter 1 — Students.

==================================================

1. BASIC CONCEPTS AND NOTATION
    ==================================================

N = Total number of observations in a population.
n = Number of observations in a sample.
x_i = Value of the variable for observation i.
k = Number of different values or classes.
n_i = Absolute frequency of value/class i.
f_i = Relative frequency of value/class i.
N_i = Cumulative absolute frequency.
F_i = Cumulative relative frequency.
x_min = Minimum value.
x_max = Maximum value.
L_i = Upper limit of class i.
L_(i-1) = Lower limit of class i.
a_i = Width of class i.
x_i (class mark) = Midpoint of class i.

TYPES OF VARIABLES

* Qualitative nominal: Categories without a natural order.
* Qualitative ordinal: Categories with a natural order.
* Quantitative discrete: Countable numerical values.
* Quantitative continuous: Numerical values that can take any value within an interval.

==================================================
2. FREQUENCY DISTRIBUTIONS

Absolute frequency:

n_i = Number of times value/class i appears.

Relative frequency:

f_i = n_i / N

Percentage frequency:

p_i = 100 * f_i

Cumulative absolute frequency:

N_i = n_1 + n_2 + … + n_i

Cumulative relative frequency:

F_i = f_1 + f_2 + … + f_i

Important properties:

SUM(n_i) = N
SUM(f_i) = 1
SUM(p_i) = 100%
F_k = 1
N_k = N

==================================================
3. GROUPED DATA AND CLASS INTERVALS

Class interval:

(L_(i-1), L_i]

Class width:

a_i = L_i - L_(i-1)

Class mark:

x_i = (L_(i-1) + L_i) / 2

For a histogram with unequal class widths:

h_i = f_i / a_i

Equivalent formula:

h_i = n_i / (N * a_i)

Area of each histogram rectangle:

S_i = a_i * h_i = f_i

For a histogram, use frequency density when class widths are unequal.

Pie chart sector angle:

Angle_i = 360° * f_i

Frequency polygon:

Plot the class marks on the horizontal axis and their corresponding frequencies on the vertical axis. Connect the points with straight lines.

==================================================
4. MEASURES OF CENTRAL TENDENCY

4.1 Arithmetic mean

For individual observations:

x_bar = SUM(x_i) / n

For a frequency distribution:

x_bar = SUM(x_i * n_i) / N

Using relative frequencies:

x_bar = SUM(x_i * f_i)

For a population, the mean is denoted by:

mu = SUM(x_i * n_i) / N

4.2 Weighted mean

WM = SUM(x_i * w_i) / SUM(w_i)

where w_i represents the weight assigned to each value.

4.3 Quadratic mean / Root Mean Square (RMS)

RMS = SQRT[SUM(x_i^2 * n_i) / N]

4.4 Mode

Mo = Value with the highest frequency.

For grouped data, the modal class is the class with the highest frequency. If using a histogram with unequal class widths, compare frequency densities.

4.5 Median

First, sort the observations in ascending order.

If n is odd:

Me = Value at position (n + 1) / 2

If n is even:

Me = [Value at position n/2 + Value at position (n/2 + 1)] / 2

For a frequency distribution, locate the middle observation(s) using cumulative frequencies.

==================================================
5. QUANTILES

General notation:

X(c) = Quantile corresponding to cumulative proportion c.

Quartiles:

Q1 = X(0.25)
Q2 = X(0.50) = Median
Q3 = X(0.75)

Deciles:

D_k = X(k/10)

Percentiles:

P_k = X(k/100)

5.1 Quantiles for individual/discrete data

Use the quantile procedure taught in class:

1. Calculate c * N.
2. Write the result as E + D, where E is the integer part and D is the decimal part.
3. If D is not zero, select the ordered observation at position E + 1.
4. If D = 0, calculate the mean of the ordered observations at positions E and E + 1.

5.2 Quantiles for grouped continuous data

First, identify the class i containing the quantile:

N_(i-1) <= c * N < N_i

Then calculate:

X(c) = L_(i-1) + [(c * N - N_(i-1)) / n_i] * a_i

Where:

c = Desired cumulative proportion.
L_(i-1) = Lower limit of the selected class.
N_(i-1) = Cumulative absolute frequency before the selected class.
n_i = Absolute frequency of the selected class.
a_i = Width of the selected class.

==================================================
6. MEASURES OF DISPERSION

6.1 Range

R = x_max - x_min

6.2 Interquartile range

R_Q = Q3 - Q1

6.3 Intercentile range

R_P = P99 - P1

6.4 Absolute deviation from a reference point

d_i = |x_i - p|

where p is the reference point, such as the mean or median.

6.5 Mean absolute deviation about p

MD(p) = SUM[|x_i - p| * n_i] / N

6.6 Mean squared error about p

MSE(p) = SUM[(x_i - p)^2 * n_i] / N

6.7 Population variance

sigma^2 = SUM[(x_i - mu)^2 * n_i] / N

Equivalent computational formula:

sigma^2 = SUM(x_i^2 * f_i) - mu^2

6.8 Population standard deviation

sigma = SQRT(sigma^2)

Remember:

Variance is expressed in squared units.
Standard deviation is expressed in the original units.

==================================================
7. SAMPLE MEAN AND SAMPLE VARIANCE

7.1 Sample mean

x_bar = SUM(x_i) / n

For grouped data:

x_bar = SUM(x_i * n_i) / n

7.2 Sample quasi-variance (denominator n - 1)

According to the notation used in class:

s^2 = SUM[(x_i - x_bar)^2] / (n - 1)

For grouped data:

s^2 = SUM[(x_i - x_bar)^2 * n_i] / (n - 1)

7.3 Sample variance (denominator n)

According to the notation used in class:

s_n^2 = SUM[(x_i - x_bar)^2] / n

For grouped data:

s_n^2 = SUM[(x_i - x_bar)^2 * n_i] / n

Relationship:

s^2 = [n / (n - 1)] * s_n^2

IMPORTANT:

Do not confuse the two definitions. In this course, the quasi-variance uses denominator n - 1, while the variance defined with denominator n uses n.

==================================================
8. STANDARDIZED VALUES AND COEFFICIENT OF VARIATION

8.1 Standardized value (Z-score)

Z = (X - mu) / sigma

For an individual value:

z_i = (x_i - mu) / sigma

Interpretation:

Z > 0: Value is above the mean.
Z < 0: Value is below the mean.
Z = 0: Value equals the mean.

The Z-score indicates how many standard deviations a value lies above or below the mean.

8.2 Coefficient of variation

CV = sigma / |mu|

As a percentage:

CV(%) = 100 * sigma / |mu|

Use the coefficient of variation to compare relative dispersion between datasets, especially when their means or units differ.

If mu = 0, the coefficient of variation is undefined.

==================================================
9. MOMENTS

9.1 Moment of order r about a point c

m_r(c) = SUM[(x_i - c)^r * n_i] / N

9.2 Ordinary moment of order r

m_r = SUM(x_i^r * n_i) / N

Important ordinary moments:

m_0 = 1
m_1 = mu
m_2 = sigma^2 + mu^2

9.3 Central moment of order r

mu_r = SUM[(x_i - mu)^r * n_i] / N

Important central moments:

mu_0 = 1
mu_1 = 0
mu_2 = sigma^2

Third central moment:

mu_3 = m_3 - 3m_2mu + 2*mu^3

Fourth central moment:

mu_4 = m_4 - 4m_3mu + 6m_2mu^2 - 3*mu^4

Remember:

* Ordinary moments are calculated about zero.
* Central moments are calculated about the mean.

==================================================
10. SKEWNESS AND KURTOSIS

10.1 Symmetry

For a symmetric distribution, the mean and median coincide:

mu = Me

For a symmetric, unimodal distribution, the mean, median and mode generally coincide:

mu = Me = Mo

10.2 Pearson skewness coefficient

AP = (mu - Mo) / sigma

10.3 Fisher skewness coefficient

g_1 = mu_3 / sigma^3

Interpretation of skewness:

g_1 = 0: No skewness according to the third central moment.
g_1 > 0: Positive/right skewness.
g_1 < 0: Negative/left skewness.

10.4 Fisher excess kurtosis

g_2 = mu_4 / sigma^4 - 3

Interpretation:

g_2 = 0: Same excess kurtosis as a normal distribution.
g_2 > 0: Greater kurtosis than a normal distribution.
g_2 < 0: Lower kurtosis than a normal distribution.

==================================================
11. QUICK FORMULA GUIDE

If the question asks for…

Absolute frequency:
n_i

Relative frequency:
f_i = n_i / N

Percentage:
p_i = 100 * f_i

Cumulative frequency:
N_i = SUM of absolute frequencies up to class i

Class width:
a_i = L_i - L_(i-1)

Class mark:
x_i = [L_(i-1) + L_i] / 2

Arithmetic mean:
x_bar = SUM(x_i * n_i) / N

Median:
Middle ordered observation(s)

Mode:
Value with the highest frequency

Quartiles:
Q1 = X(0.25), Q2 = X(0.50), Q3 = X(0.75)

Grouped quantile:
X(c) = L_(i-1) + [(c*N - N_(i-1))/n_i] * a_i

Range:
R = x_max - x_min

Interquartile range:
R_Q = Q3 - Q1

Population variance:
sigma^2 = SUM[(x_i - mu)^2 * n_i] / N

Population standard deviation:
sigma = SQRT(sigma^2)

Sample quasi-variance:
s^2 = SUM[(x_i - x_bar)^2] / (n - 1)

Sample variance:
s_n^2 = SUM[(x_i - x_bar)^2] / n

Standardized value:
Z = (X - mu) / sigma

Coefficient of variation:
CV = sigma / |mu|

Third central moment:
mu_3 = SUM[(x_i - mu)^3 * n_i] / N

Fourth central moment:
mu_4 = SUM[(x_i - mu)^4 * n_i] / N

Fisher skewness:
g_1 = mu_3 / sigma^3

Fisher excess kurtosis:
g_2 = mu_4 / sigma^4 - 3

==================================================
END OF CHAPTER 1 FORMULARY

NOTATION NOTE:
In this document, SUM means summation, SQRT means square root, and |x| means absolute value. For grouped data, x_i represents the class mark when used in formulas involving class intervals. Use the notation and quantile procedure specified by your professor.