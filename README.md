# 函数之舞：三角函数交互式探索 🎭

一个专为高中生设计的三角函数 `y = A·sin(ωx + φ)` 交互式学习工具，通过直观的可视化和实时交互帮助学生深入理解三角函数的性质。

![项目预览](https://img.shields.io/badge/Status-Active-brightgreen) ![技术栈](https://img.shields.io/badge/Tech-HTML5%20%7C%20CSS3%20%7C%20JavaScript-blue) ![教育](https://img.shields.io/badge/Category-Education-orange)

## ✨ 核心特性

### 🎯 交互式参数控制
- **振幅 (A)**: 范围 0.5-3.0，实时调节函数的最大值
- **角频率 (ω)**: 范围 0.5-5.0，控制函数的周期性
- **初相 (φ)**: 范围 0-6.28，调整函数的水平偏移

### 📊 可视化功能
- 标准笛卡尔坐标系，包含完整的网格和标记
- 实时函数图像绘制，流畅的动画效果
- 动态公式显示，实时更新当前函数表达式
- 响应式设计，支持桌面和移动设备

### 🎨 现代化界面
- 渐变背景和卡片式布局
- 直观的滑块控制器
- 清晰的数值显示
- 优雅的视觉效果

## 🚀 快速开始

### 方法一：直接运行
1. 克隆或下载项目到本地
2. 双击 `restart.bat` 一键启动
3. 浏览器自动打开 `http://localhost:8000`

### 方法二：手动启动
```bash
# 进入项目目录
cd functiondance

# 启动HTTP服务器
python -m http.server 8000

# 或使用Node.js
npx http-server -p 8000
```

### 方法三：Docker容器化运行
```bash
# 构建镜像
docker build -t function-dance .

# 运行容器
docker run -p 8000:80 function-dance
```

## 📚 使用指南

### 基础操作
1. **调节振幅 (A)**: 拖动第一个滑块，观察函数图像的纵向拉伸/压缩
2. **调节角频率 (ω)**: 拖动第二个滑块，观察函数周期的变化
3. **调节初相 (φ)**: 拖动第三个滑块，观察函数的水平平移

### 教学建议
- **振幅探索**: 从A=1开始，逐步增大到3，观察图像高度变化
- **频率理解**: 比较ω=1和ω=2时的周期差异
- **相位概念**: 通过调节φ值理解函数的水平偏移
- **综合应用**: 尝试不同参数组合，观察复合效果

## 🎓 教育价值

### 适用对象
- 高中数学学生（函数与三角函数章节）
- 数学教师（课堂演示工具）
- 自学者（数学概念可视化）

### 学习目标
- 理解三角函数的基本性质
- 掌握参数对函数图像的影响
- 培养数形结合的数学思维
- 提高对抽象概念的直观理解

### 知识点覆盖
- 三角函数的定义域和值域
- 周期性和对称性
- 函数变换（平移、伸缩）
- 参数方程的几何意义

## 🛠️ 技术实现

### 技术栈
- **前端**: 原生HTML5 + CSS3 + JavaScript
- **图形**: HTML5 Canvas API
- **部署**: Python HTTP Server / Docker
- **兼容性**: 现代浏览器（Chrome, Firefox, Safari, Edge）

### 核心算法
- 数学坐标到Canvas坐标的转换
- 实时函数图像绘制算法
- 平滑的参数插值和动画
- 响应式布局适配

### 性能优化
- 高效的Canvas重绘机制
- 事件防抖处理
- 内存管理优化
- 移动端触摸优化

## 📁 项目结构

```
functiondance/
├── index.html          # 主应用文件
├── README.md           # 项目说明文档
├── describe.md         # 技术开发论文
├── Dockerfile          # Docker容器配置
├── restart.bat         # 一键启动脚本
└── .gitignore          # Git忽略文件
```

## 🔧 自定义配置

### 参数范围调整
在 `index.html` 中修改滑块的 `min`、`max`、`step` 属性：
```html
<input type="range" id="amplitudeSlider" 
       min="0.5" max="3.0" step="0.1" value="1.0">
```

### 坐标系范围
修改JavaScript中的缩放参数：
```javascript
const scaleX = 60; // X轴缩放比例
const scaleY = 60; // Y轴缩放比例
```

### 颜色主题
在CSS中调整颜色变量：
```css
:root {
  --primary-color: #e74c3c;
  --background-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}
```

## 🤝 贡献指南

欢迎提交Issue和Pull Request！

### 开发环境
1. 克隆项目
2. 使用任意HTTP服务器运行
3. 在浏览器中测试功能

### 提交规范
- 功能增强：`feat: 添加新功能描述`
- 问题修复：`fix: 修复问题描述`
- 文档更新：`docs: 更新文档内容`

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件

## 📞 联系方式

如有问题或建议，欢迎通过以下方式联系：
- 提交 GitHub Issue
- 发送邮件至项目维护者

---

**让数学学习变得更加直观和有趣！** 🎉

> 通过交互式可视化，将抽象的数学概念转化为直观的视觉体验，帮助学生建立深刻的数学理解。

## 🌐 部署与访问指南

### 在线访问地址

#### 国内直接访问（推荐）
- **GitHack CDN**: https://raw.githack.com/13866212855/functiondance/main/index.html
- **Statically CDN**: https://cdn.statically.io/gh/13866212855/functiondance/main/index.html

#### 国际访问
- **Vercel**: https://function-dance.vercel.app/
- **GitHub Pages**: https://13866212855.github.io/functiondance/

---

## 📦 完整部署指南：从开发到国内访问

> 本指南详细记录了如何将Web应用发布到GitHub并配置国内用户可直接访问的完整流程

### 🚀 第一步：准备GitHub仓库

#### 1.1 创建GitHub仓库
```bash
# 在GitHub网站上创建新仓库
# 仓库名：functiondance
# 设置为Public（公开）
# 不要初始化README（如果本地已有代码）
```

#### 1.2 本地Git初始化
```bash
# 进入项目目录
cd your-project-folder

# 初始化Git仓库
git init

# 添加所有文件
git add .

# 提交代码
git commit -m "Initial commit: 三角函数交互式探索应用完整版"

# 添加远程仓库
git remote add origin https://github.com/username/functiondance.git

# 推送到GitHub
git push -u origin main
```

### 🌍 第二步：配置多平台部署

#### 2.1 GitHub Pages 部署
```bash
# 方法一：通过GitHub网站配置
# 1. 访问：https://github.com/username/functiondance/settings/pages
# 2. Source: 选择 "Deploy from a branch"
# 3. Branch: 选择 "main"
# 4. Folder: 选择 "/ (root)"
# 5. 点击 Save

# 方法二：通过命令行（需要GitHub CLI）
gh repo create functiondance --public --source=. --remote=origin --push
```

#### 2.2 Vercel 部署（可选）
```bash
# 安装Vercel CLI
npm i -g vercel

# 登录Vercel
vercel login

# 部署项目
vercel --prod

# 或者通过GitHub集成自动部署
# 访问 vercel.com，连接GitHub仓库
```

### 🇨🇳 第三步：配置国内访问方案

#### 3.1 CDN加速访问（推荐）

**GitHack（最稳定）**
```
访问地址：https://raw.githack.com/username/functiondance/main/index.html
特点：专为GitHub HTML文件设计，渲染完整网页
适用：生产环境，稳定可靠
```

**Statically CDN**
```
访问地址：https://cdn.statically.io/gh/username/functiondance/main/index.html
特点：全球CDN加速，国内访问较快
适用：备用方案
```

**jsDelivr CDN**
```
文件访问：https://cdn.jsdelivr.net/gh/username/functiondance@main/
注意：显示文件列表，需点击index.html
适用：文件分发，不适合直接访问
```

#### 3.2 Gitee Pages 部署（备选）

```bash
# 1. 在Gitee创建同名仓库
# 2. 添加Gitee远程仓库
git remote add gitee https://gitee.com/username/functiondance.git

# 3. 推送代码到Gitee
git push gitee main

# 4. 在Gitee仓库设置中开启Pages服务
# 注意：可能需要实名认证
```

### 🔄 第四步：自动化部署流程

#### 4.1 创建GitHub Actions（可选）
创建 `.github/workflows/deploy.yml`：
```yaml
name: Deploy to Multiple Platforms
on:
  push:
    branches: [ main ]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Deploy to GitHub Pages
      uses: peaceiris/actions-gh-pages@v3
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./
```

#### 4.2 同步到多个平台
```bash
# 创建推送脚本 deploy.sh
#!/bin/bash
echo "开始部署到多个平台..."

# 推送到GitHub
git push origin main
echo "✅ GitHub 推送完成"

# 推送到Gitee（如果配置了）
git push gitee main
echo "✅ Gitee 推送完成"

echo "🎉 部署完成！"
echo "GitHub Pages: https://username.github.io/functiondance/"
echo "GitHack CDN: https://raw.githack.com/username/functiondance/main/index.html"
```

### 📋 第五步：访问地址汇总

#### 5.1 国内用户推荐访问顺序
1. **GitHack CDN**（首选）
   ```
   https://raw.githack.com/username/functiondance/main/index.html
   ```

2. **Statically CDN**（备选）
   ```
   https://cdn.statically.io/gh/username/functiondance/main/index.html
   ```

3. **Gitee Pages**（如果配置）
   ```
   https://username.gitee.io/functiondance/
   ```

#### 5.2 国际用户访问
1. **GitHub Pages**
   ```
   https://username.github.io/functiondance/
   ```

2. **Vercel**（如果部署）
   ```
   https://functiondance.vercel.app/
   ```

### ⚡ 第六步：性能优化建议

#### 6.1 代码优化
```bash
# 压缩HTML/CSS/JS（可选）
# 使用工具如 html-minifier, cssnano, terser

# 优化图片资源
# 使用 WebP 格式，压缩图片大小
```

#### 6.2 CDN缓存策略
```html
<!-- 在HTML中添加缓存控制 -->
<meta http-equiv="Cache-Control" content="public, max-age=31536000">
```

### 🛠️ 第七步：故障排除

#### 7.1 常见问题
```bash
# 问题1：GitHub Pages 404错误
# 解决：检查仓库是否为Public，确认index.html在根目录

# 问题2：CDN访问显示源代码
# 解决：使用GitHack而不是jsDelivr直接访问

# 问题3：Gitee Pages无法开启
# 解决：完成实名认证，检查仓库权限设置
```

#### 7.2 测试检查清单
- [ ] GitHub仓库代码已推送
- [ ] GitHub Pages已开启并部署成功
- [ ] GitHack CDN可正常访问
- [ ] 移动端兼容性测试
- [ ] 功能完整性验证

### 📝 第八步：维护更新

#### 8.1 代码更新流程
```bash
# 1. 本地修改代码
# 2. 提交更改
git add .
git commit -m "feat: 添加新功能或修复问题"

# 3. 推送到所有平台
git push origin main
git push gitee main  # 如果配置了Gitee

# 4. 等待CDN缓存更新（通常1-5分钟）
```

#### 8.2 版本管理
```bash
# 创建版本标签
git tag -a v1.0.0 -m "Release version 1.0.0"
git push origin --tags

# 访问特定版本
# https://raw.githack.com/username/functiondance/v1.0.0/index.html
```

---

### 🎯 总结

通过以上步骤，您可以实现：
- ✅ **多平台部署**：GitHub Pages + Vercel + Gitee Pages
- ✅ **国内直接访问**：GitHack CDN + Statically CDN
- ✅ **自动化流程**：Git推送自动部署
- ✅ **高可用性**：多个访问入口，确保服务稳定

**最终用户访问体验**：
- 国内用户：无需梯子，直接访问CDN地址
- 国外用户：GitHub Pages或Vercel高速访问
- 开发者：一次部署，多平台同步
