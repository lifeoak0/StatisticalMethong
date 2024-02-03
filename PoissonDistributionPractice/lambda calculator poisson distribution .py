import numpy as np #调用numpy进行数值计算

#随机数据示例
data = np.array([2, 3, 4, 3, 1, 2, 0, 2, 3, 2, 1, 1, 1, 0, 4, 3, 2])

# 计算平均值作为λ的估计（lambda在泊松分布中代表的是时间在固定时间间隔和空间区域发生的平均次数，其实就是期望值）
lambda_estimate = np.mean(data)
print("Estimated λ for the Poisson distribution:", lambda_estimate)
