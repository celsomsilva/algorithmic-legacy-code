program ponteiro;
uses crt;
var p1,p2:^integer;
begin
p1:=nil;
new(p2);
new(p1);
p2^:=20;
p1^:=p2^;{essa posicao de memoria foi perdida pelo S.O., o mesmo nao sabe aonde o mesmo esta}
p2:=p2;
write(p2^);
end.


summary(modelo_empresas)

Call:
lm(formula = retorno ~ . - empresa, data = empresas)

Residuals:
     Min       1Q   Median       3Q      Max 
-12.1494  -5.3099   0.5667   5.2917  10.8992 

Coefficients:
                Estimate Std. Error t value Pr(>|t|)    
(Intercept)    6.0506242  4.0797521   1.483   0.1407    
disclosure     0.1067127  0.0479210   2.227   0.0278 *  
endividamento -0.0881867  0.0511828  -1.723   0.0875 .  
ativos         0.0034722  0.0006763   5.134 1.12e-06 ***
liquidez       1.9761624  0.3963012   4.987 2.12e-06 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 6.272 on 119 degrees of freedom
Multiple R-squared:  0.8325,	Adjusted R-squared:  0.8269 
F-statistic: 147.9 on 4 and 119 DF,  p-value: < 2.2e-16

> ################################################################################
> #                            PROCEDIMENTO STEPWISE                             #
> ################################################################################
> #Aplicando o procedimento Stepwise, temos o seguinte código:
> step_empresas <- step(modelo_empresas, k = 3.841459)
Start:  AIC=469.46
retorno ~ (empresa + disclosure + endividamento + ativos + liquidez) - 
    empresa

                Df Sum of Sq    RSS    AIC
- endividamento  1    116.78 4798.1 468.67
<none>                       4681.3 469.46
- disclosure     1    195.07 4876.4 470.68
- liquidez       1    978.17 5659.5 489.15
- ativos         1   1036.87 5718.2 490.43

Step:  AIC=468.67
retorno ~ disclosure + ativos + liquidez

             Df Sum of Sq    RSS    AIC
- disclosure  1    138.53 4936.6 468.36
<none>                    4798.1 468.67
- ativos      1    940.64 5738.7 487.03
- liquidez    1   1513.50 6311.6 498.83

Step:  AIC=468.36
retorno ~ ativos + liquidez

           Df Sum of Sq    RSS    AIC
<none>                  4936.6 468.36
- ativos    1    2387.1 7323.8 513.43
- liquidez  1    4616.2 9552.9 546.38
> #De onde vem o argumento k = 3.841459?
> qchisq(p = 0.05, df = 1, lower.tail = F)
[1] 3.841459
> round(pchisq(3.841459, df = 1, lower.tail = F), 7)
[1] 0.05
> summary(step_empresas)

Call:
lm(formula = retorno ~ ativos + liquidez, data = empresas)

Residuals:
    Min      1Q  Median      3Q     Max 
-12.537  -5.533   1.108   4.930  11.831 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept) -2.5347536  2.3408742  -1.083    0.281    
ativos       0.0040223  0.0005258   7.649  5.4e-12 ***
liquidez     2.7390775  0.2575030  10.637  < 2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 6.387 on 121 degrees of freedom
Multiple R-squared:  0.8234,	Adjusted R-squared:  0.8205 
F-statistic: 282.1 on 2 and 121 DF,  p-value: < 2.2e-16
