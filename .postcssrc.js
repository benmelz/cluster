module.exports = {
  parser: 'postcss-scss',
  plugins: {
    '@csstools/postcss-sass': { includePaths: ['node_modules'] },
    'postcss-nesting': {},
    'autoprefixer': {}
  }
};
