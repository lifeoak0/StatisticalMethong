#include <stdio.h>
#include <math.h>

void showMenu() {
    printf("请选择一个操作:\n");
    printf("1. 加法 (+)\n");
    printf("2. 减法 (-)\n");
    printf("3. 乘法 (*)\n");
    printf("4. 除法 (/)\n");
    printf("5. 幂运算 (x^y)\n");
    printf("6. 平方根 (sqrt)\n");
    printf("7. 对数 (log)\n");
    printf("8. 正弦 (sin)\n");
    printf("9. 余弦 (cos)\n");
    printf("10. 正切 (tan)\n");
}

int main() {
    int choice;
    double num1, num2, result;

    // 显示菜单
    showMenu();
    printf("请输入您的选择 (1-10): ");
    scanf("%d", &choice);

    switch(choice) {
        case 1: // 加法
            printf("请输入两个数字: ");
            scanf("%lf %lf", &num1, &num2);
            result = num1 + num2;
            printf("结果: %.2lf + %.2lf = %.2lf\n", num1, num2, result);
            break;

        case 2: // 减法
            printf("请输入两个数字: ");
            scanf("%lf %lf", &num1, &num2);
            result = num1 - num2;
            printf("结果: %.2lf - %.2lf = %.2lf\n", num1, num2, result);
            break;

        case 3: // 乘法
            printf("请输入两个数字: ");
            scanf("%lf %lf", &num1, &num2);
            result = num1 * num2;
            printf("结果: %.2lf * %.2lf = %.2lf\n", num1, num2, result);
            break;

        case 4: // 除法
            printf("请输入两个数字: ");
            scanf("%lf %lf", &num1, &num2);
            if (num2 != 0) {
                result = num1 / num2;
                printf("结果: %.2lf / %.2lf = %.2lf\n", num1, num2, result);
            } else {
                printf("错误: 除数不能为零！\n");
            }
            break;

        case 5: // 幂运算 (x^y)
            printf("请输入底数和指数 (x y): ");
            scanf("%lf %lf", &num1, &num2);
            result = pow(num1, num2);
            printf("结果: %.2lf ^ %.2lf = %.2lf\n", num1, num2, result);
            break;

        case 6: // 平方根
            printf("请输入一个数字: ");
            scanf("%lf", &num1);
            if (num1 >= 0) {
                result = sqrt(num1);
                printf("结果: sqrt(%.2lf) = %.2lf\n", num1, result);
            } else {
                printf("错误: 不能对负数求平方根！\n");
            }
            break;

        case 7: // 对数 (以e为底)
            printf("请输入一个数字: ");
            scanf("%lf", &num1);
            if (num1 > 0) {
                result = log(num1);
                printf("结果: log(%.2lf) = %.2lf\n", num1, result);
            } else {
                printf("错误: 对数运算的输入必须大于零！\n");
            }
            break;

        case 8: // 正弦
            printf("请输入一个角度 (以弧度为单位): ");
            scanf("%lf", &num1);
            result = sin(num1);
            printf("结果: sin(%.2lf) = %.2lf\n", num1, result);
            break;

        case 9: // 余弦
            printf("请输入一个角度 (以弧度为单位): ");
            scanf("%lf", &num1);
            result = cos(num1);
            printf("结果: cos(%.2lf) = %.2lf\n", num1, result);
            break;

        case 10: // 正切
            printf("请输入一个角度 (以弧度为单位): ");
            scanf("%lf", &num1);
            result = tan(num1);
            printf("结果: tan(%.2lf) = %.2lf\n", num1, result);
            break;

        default:
            printf("错误: 无效的选择！\n");
            break;
    }

    return 0;
}
