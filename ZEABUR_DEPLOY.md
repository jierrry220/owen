# 🔐 Owner Panel - Zeabur 部署指南

## ⚠️ 安全警告

这是管理员控制台,包含敏感功能,**必须采取安全措施**!

---

## 🚀 部署步骤

### 1️⃣ 推送到 GitHub

```bash
cd C:\Users\CDD\Desktop\DBP-Owner-Panel
git init
git add .
git commit -m "feat: Owner Panel 初始化"
git branch -M main
git remote add origin https://github.com/jierrry220/owen.git
git push -u origin main --force
```

### 2️⃣ 在 Zeabur 创建服务

1. 访问 https://zeabur.com/dashboard
2. 选择项目或创建新项目
3. 点击 **"Add Service"** → **"Git"**
4. 选择仓库: **jierrry220/owen**
5. 点击 **"Deploy"**

### 3️⃣ 配置域名

在 Zeabur 服务的 **Networking** 标签:

- ✅ 使用 Zeabur 提供的随机域名 (推荐)
- ❌ **不要**使用容易猜测的域名
- ❌ **不要**使用包含 "admin", "owner", "panel" 等关键词的域名

**示例**:
- ✅ 好: `abc123xyz.zeabur.app`
- ❌ 坏: `debear-admin.zeabur.app`

---

## 🔒 安全建议

### 建议 1: 使用难以猜测的域名
Zeabur 会自动生成随机域名,保持使用它,不要改成容易被猜到的域名。

### 建议 2: 添加访问密码保护
在 `admin.html` 和 `stats.html` 中添加登录验证:

```javascript
// 在页面加载时检查
const ADMIN_PASSWORD = 'your-strong-password-here';
const entered = prompt('请输入管理员密码:');
if (entered !== ADMIN_PASSWORD) {
    alert('密码错误');
    window.location.href = 'about:blank';
}
```

### 建议 3: IP 白名单 (可选)
如果可能,在 Zeabur 或 Cloudflare 配置 IP 白名单,只允许你的 IP 访问。

### 建议 4: 定期更换域名
每隔一段时间更换一次部署的域名,降低被发现的风险。

### 建议 5: 不要在公开场合分享
- ❌ 不要在 Discord/Telegram 等公开群组分享链接
- ❌ 不要提交包含域名的代码到公开仓库
- ✅ 只在私密渠道分享给受信任的管理员

---

## 📊 功能列表

### admin.html (主控制台)
- 📊 实时数据统计
- 👥 用户余额管理
- 💰 手动充值/提现
- 🔍 交易记录查询
- 🎮 游戏记录管理

### stats.html (统计页面)
- 📈 数据可视化
- 💹 收入/支出趋势
- 👥 用户活跃度
- 🎯 游戏热度分析

---

## 🔧 配置后端 API

确保 `admin.html` 和 `stats.html` 中的 `API_BASE` 指向正确的后端:

```javascript
const CONFIG = {
    API_BASE: 'https://yhgl.zeabur.app/api/game-balance',
    // ...
};
```

---

## ✅ 部署验证

1. 访问部署的域名
2. 应该能看到 admin.html 或 index.html
3. 测试功能是否正常

---

## 🚨 如果发现安全问题

1. 立即在 Zeabur 停止服务
2. 更换部署域名
3. 检查是否有未授权访问
4. 更新访问控制措施

---

## 📝 注意事项

- 这是静态站点部署,无需后端
- 所有数据通过 API 调用后端服务
- 确保后端 CORS 配置允许 Owner Panel 域名访问
- 定期检查访问日志

---

**安全第一!** 🔐
