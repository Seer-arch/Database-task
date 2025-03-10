# 数据库第一次作业

## 题目一

### 1. 查询成都市支行的名字
**关系代数表达式**：
$$
\pi_{\text{branch\_name}} \left( \sigma_{\text{branch\_city} = \text{'成都'}} (\text{branch}) \right)
$$

### 2. 查询杨柳支行贷款人ID
**关系代数表达式**：
$$
\pi_{\text{ID}} \left( \sigma_{\text{branch\_name} = \text{'杨柳'}} (\text{borrower} \bowtie \text{loan}) \right)
$$

---

## 题目二 用户登录验证

**实现思路**：
$$
\pi_{\text{name}} \left( \sigma_{\text{name} = \text{'用户名'} \ \land \ \text{pswd} = \text{'密码'}} (\text{users}) \right)
$$

**思路说明**：
1. 使用选择操作 σ 筛选同时匹配用户名和密码的记录
2. 通过投影操作 π 提取用户名字段
3. 判断结果：  
   若存在结果 → 登录成功  
   若结果为空 → 登录失败