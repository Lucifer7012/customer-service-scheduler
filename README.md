# 客服排班器

一个用于生成客服与产品运维排班的单页工具。当前版本支持四名海外游戏客服轮休规则、产品运维专员固定周排班，并可导出企业微信自定义排班模板。

## 在线使用

- GitHub 仓库：`https://github.com/Lucifer7012/customer-service-scheduler`
- 在线页面：`https://lucifer7012.github.io/customer-service-scheduler/`

入口文件是 `index.html`。

本地打开方式：

```powershell
.\start-dev.cmd
```

也可以直接双击 `index.html` 打开。

## 当前能力

- 客服 4 人排班：周末休、周二周三休、两组周四周五休。
- 每 4 周轮换一次休周末人员，可选择下一位休周末的人。
- 支持第 4 位客服暂未到岗时先用 `客服D` 代替。
- 产品运维专员独立固定排班：周一到周日为 `白 / 晚 / 白 / 晚 / 休 / 休 / 晚`。
- 排班器内可编辑姓名、账号、部门、职务。
- 职务可选：`选填`、`产品运维专员`、`海外游戏客服`。
- 支持导出 CSV、Excel 表格、企业微信自定义排班模板。

## 协作口令

和 redpoint 项目一样，后续可以直接用这两句：

- `开始前帮我同步最新代码`
- `改完了，帮我检查并同步到 GitHub`

对应脚本：

```powershell
.\tools\sync-start.ps1
.\tools\sync-finish.ps1 -Message "简短说明这次改动"
```

## 更新记录

每次改动后同步更新：

- `FEATURE_LOG.md`：功能记录和验证方式。
- `docs/CHANGELOG.md`：每次更新的简短流水。
- `docs/PROJECT_STATUS.md`：当前项目状态。
- `docs/HANDOFF.md`：给下一次 Codex 或另一台电脑接手用。
