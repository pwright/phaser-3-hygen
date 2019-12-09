---
to: "<%if (template === 'typescript') {%><%= path %>/tsconfig.json<%}%>"
---
{
  "compilerOptions": {
    "outDir": "./dist/",
    "sourceMap": true,
    "noImplicitAny": true,
    "module": "esnext",
    "target": "es5",
    "jsx": "react",
    "allowJs": true,
    "moduleResolution": "node",
    "experimentalDecorators": true,
    "allowSyntheticDefaultImports": true,
    "esModuleInterop": true,
    "typeRoots": [
      "./node_modules/phaser/types"
    ],
    "types": ["node", "phaser"],
    "lib": ["es2015", "dom", "scripthost"]
  },
  "include": [
    "src/**/*.ts",
    "typings/**/*.ts"
  ]
}
