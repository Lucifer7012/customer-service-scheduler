const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const htmlPath = path.join(root, "index.html");
const html = fs.readFileSync(htmlPath, "utf8");
const scripts = [...html.matchAll(/<script>([\s\S]*?)<\/script>/gi)].map((match) => match[1]);

if (!scripts.length) {
  throw new Error("index.html 中没有找到内嵌脚本。");
}

for (const [index, script] of scripts.entries()) {
  try {
    new Function(script);
  } catch (error) {
    error.message = `第 ${index + 1} 段 <script> 语法检查失败：${error.message}`;
    throw error;
  }
}

console.log(`HTML script check passed: ${scripts.length} script block(s).`);

