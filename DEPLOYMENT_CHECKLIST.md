# ✅ Owner Panel 部署检查清单

## 📋 部署前准备

- [ ] 已创建 GitHub 仓库: https://github.com/jierrry220/owen.git
- [ ] 本地文件已更新 (包含 zeabur.json)
- [ ] 网络连接正常

---

## 🚀 Step 1: 推送到 GitHub

**方式 A: 使用脚本 (推荐)**
```bash
双击运行: deploy.bat
```

**方式 B: 手动命令**
```bash
cd C:\Users\CDD\Desktop\DBP-Owner-Panel
git add .
git commit -m "feat: Owner Panel 部署"
git push -u origin main --force
```

验证: 访问 https://github.com/jierrry220/owen 确认文件已上传

---

## 🌐 Step 2: 在 Zeabur 创建服务

1. **访问**: https://zeabur.com/dashboard
2. **选择项目** 或创建新项目
3. **添加服务**: 
   - 点击 "Add Service"
   - 选择 "Git"
   - 选择仓库: **jierrry220/owen**
   - 点击 "Deploy"

4. **等待部署完成**
   - 查看 Logs 确认部署成功
   - 看到 "✅ Deployment successful" 或类似信息

---

## 🔒 Step 3: 配置安全设置

### 3.1 域名设置
在 **Networking** 标签:
- [x] 记录 Zeabur 自动分配的域名
- [ ] ⚠️ **不要**改成容易猜测的域名
- [ ] 示例: `abc123xyz.zeabur.app` ✅

### 3.2 访问控制 (可选但推荐)
- [ ] 只在私密渠道分享域名
- [ ] 不在公开群组/论坛发布链接
- [ ] 定期更换域名

---

## 🧪 Step 4: 验证部署

### 4.1 访问测试
访问: `https://你的域名.zeabur.app`

应该能看到:
- [ ] index.html 或 admin.html 页面正常加载
- [ ] 页面样式正常显示
- [ ] 无 404 错误

### 4.2 功能测试
在 admin.html 中测试:
- [ ] 能够查询用户余额
- [ ] 统计数据正常显示
- [ ] 交易记录能够加载
- [ ] 手动充值/提现功能正常

### 4.3 API 连接测试
打开浏览器开发者工具 (F12):
- [ ] Network 标签中看到 API 请求成功
- [ ] 无 CORS 错误
- [ ] 后端 API 返回正确数据

---

## 🐛 常见问题排查

### 问题 1: 页面 404 Not Found
**原因**: zeabur.json 配置错误
**解决**: 
```json
{
  "name": "debear-party-owner-panel",
  "build": {
    "outputDirectory": "."
  }
}
```

### 问题 2: API 调用失败 (CORS 错误)
**原因**: 后端未允许 Owner Panel 域名
**解决**: 后端已配置 `origin: '*'`,应该没问题

### 问题 3: 页面显示但功能不工作
**原因**: API_BASE 配置错误
**检查**: admin.html 中的 CONFIG.API_BASE
```javascript
const CONFIG = {
    API_BASE: 'https://yhgl.zeabur.app/api/game-balance'
};
```

### 问题 4: 推送到 GitHub 失败
**原因**: 网络问题或仓库不存在
**解决**: 
1. 检查网络连接
2. 确认 GitHub 仓库已创建
3. 检查 Git remote: `git remote -v`

---

## 📊 部署后配置

### 记录部署信息
```
部署域名: https://__________.zeabur.app
部署时间: 2025-11-20
仓库地址: https://github.com/jierrry220/owen.git
```

### 分享给团队成员
**安全提醒**:
- ✅ 仅通过私密渠道 (如加密聊天)
- ❌ 不要在公开场合分享
- ⚠️ 告知安全注意事项

---

## 🔄 更新部署

修改文件后:
1. 双击运行 `deploy.bat`
2. 或手动执行 `git push`
3. Zeabur 会自动重新部署
4. 等待1-2分钟后刷新页面

---

## ✅ 部署完成标志

全部打勾说明部署成功:
- [ ] GitHub 仓库有最新代码
- [ ] Zeabur 服务运行中
- [ ] 域名可以正常访问
- [ ] 页面功能正常工作
- [ ] API 连接正常
- [ ] 安全措施已到位

---

**部署成功!** 🎉
