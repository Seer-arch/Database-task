# 数据库第一次作业

## 题目一

### 1. 查询成都市支行的名字
**关系代数表达式**： 
```relational-algebra
 Π branch_name (σ branch_city = '成都' (branch))
```

### 2. 查询杨柳支行贷款人ID
**关系代数表达式**：
```relational-algebra
 Π ID (σ branch_name = '杨柳' (borrower ⨝ loan))
```

---

## 题目二 用户登录验证

**实现思路**：
```relational-algebra
 Π name (σ name = '用户名' ∧ pswd = '密码' (users))
```

**思路说明**：
1. 使用选择操作 σ 筛选同时匹配用户名和密码的记录
2. 通过投影操作 π 提取用户名字段
3. 判断结果：  
   若存在结果 → 登录成功  
   若结果为空 → 登录失败