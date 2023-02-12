module.exports = {
  root: true,
  env: {
    browser: true,
    es2022: true
  },
  extends: [
    'eslint:recommended',
    'google'
  ],
  ignorePatterns: [
    'app/assets/builds/',
    'app/javascript/controllers/index.js',
    'coverage/',
    'node_modules/'
  ],
  parserOptions: {
    sourceType: 'module'
  },
  rules: {
    'comma-dangle': ['error', 'never'],
    'curly': ['error', 'multi-or-nest'],
    'indent': ['error', 2, { 'MemberExpression': 1, 'SwitchCase': 1 }],
    'max-len': ['error', { 'code': 120 }],
    'object-curly-spacing': ['error', 'always'],
    'require-jsdoc': 'off'
  },
  overrides: [
    {
      files: ['.eslintrc.js', '.postcssrc.js', '.stylelintrc.js'],
      env: {
        browser: false,
        node: true
      }
    }
  ]
};
