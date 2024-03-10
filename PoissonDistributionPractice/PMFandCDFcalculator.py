import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import poisson

# 设置泊松分布的参数λ
lambda_val = 3.0  #假设事件的平均发生率为3次..

# 计算所提供假设lambda值为3时，PMF概率密度函数和CDF积累分布函数
k_values = np.arange(0, 10)  #计算0到9次事件发生的概率
pmf_values = poisson.pmf(k_values, lambda_val)  #PMF概率质量函数-对于给定的λ数值，计算特定数量时间发生的概率
cdf_values = poisson.cdf(k_values, lambda_val)  #CDF积累分布函数-计算事件发生次数小于或者等于某个数值的概率

# 可视化PMF和CDF
plt.figure(figsize=(12, 6))

# 绘制概率质量函数
plt.subplot(1, 2, 1)
plt.bar(k_values, pmf_values, color='purple', alpha=1, label='PMF')
plt.title('Poisson PMF (λ = 3)')
plt.xlabel('Number of Events (k)')
plt.ylabel('Probability')
plt.xticks(k_values)
plt.grid(axis='y')
# 绘制积累分布函数
plt.subplot(1, 2, 2)
plt.step(k_values, cdf_values, where='post', color='green', label='CDF')
plt.title('Poisson CDF (λ = 3)')
plt.xlabel('Number of Events (k)')
plt.ylabel('Cumulative Probability')
plt.xticks(k_values)
plt.yticks(np.linspace(0, 1, 11))
plt.grid(axis='y')
#图像绘制
plt.tight_layout()
plt.show()


