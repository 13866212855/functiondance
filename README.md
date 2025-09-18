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