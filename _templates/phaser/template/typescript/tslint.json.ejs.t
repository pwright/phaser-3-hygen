---
to: "<%if (template === 'typescript') {%><%= path %>/tslint.json<%}%>"
---
{
  "extends": "tslint-config-airbnb",
  "rules": {
    "max-line-length": [
      true,
      120
    ],
    "import-name": false,
    "strictNullChecks": false
  }
}
