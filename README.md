# Jarman 的技能库

放一些个人的 skill，兼容 Claude Code、Codex 等支持 SKILL.md 的工具。

## 技能列表

### learning

| 技能                                                  | 干嘛的                                                                            |
| ----------------------------------------------------- | --------------------------------------------------------------------------------- |
| [tech-review](./skills/learning/tech-review/SKILL.md) | AI 推荐了不熟悉的技术时，帮你快速搞清楚它是什么、需要学到什么程度、确认自己真会了 |

## 外部依赖

有些技能需要配合 [mattpocock/skills](https://github.com/mattpocock/skills) 使用：

| 本仓库技能  | 依赖的技能             |
| ----------- | ---------------------- |
| tech-review | teach, domain-modeling |

```bash
npx skills@latest add mattpocock/skills
```

## 怎么用

1. clone 到本地
2. 把 `skills/` 目录配到你工具的 skills 路径
3. 装好外部依赖
4. 在工具里打 `/<技能名>` 调用

## 许可

[MIT](./LICENSE)
