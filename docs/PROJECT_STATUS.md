# Project Status

最新状态（2026-06-09）：

- 项目名称：客服排班器。
- GitHub 仓库：`https://github.com/Lucifer7012/customer-service-scheduler`。
- 在线页面：`https://lucifer7012.github.io/customer-service-scheduler/`。
- 入口文件：`index.html`。
- 当前形态：纯前端单页工具，可直接本地打开，也可通过 GitHub Pages 发布。
- 当前主要功能：
  - 四名海外游戏客服排班。
  - 每四周轮换休周末人员。
  - 产品运维专员固定排班。
  - 可编辑企微导出人员信息。
  - 可导出企业微信自定义排班模板。
- 当前默认人员：
  - 产品运维专员：`产品运维专员-曾培钒Wilson`。
  - 客服 1：`海外游戏客服-廖宇杰Kelly`。
  - 客服 2：`海外游戏客服-唐禧雯lvy`。
  - 客服 3：`海外游戏客服-杨洋Mia`。
  - 客服 4：`客服D`，用于暂时代替未到岗的第 4 位客服。
- 当前注意点：
  - 企业微信导出使用 `休息 / 白班 / 晚班` 三个班次名。
  - 职务下拉选项为 `选填 / 产品运维专员 / 海外游戏客服`。
  - 后续每次改动都要同步更新 `FEATURE_LOG.md` 和本文件。

验证方式：

```powershell
node tools/check-html.js
```
