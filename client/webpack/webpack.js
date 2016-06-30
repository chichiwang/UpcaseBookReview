const path = require('path');
const webpack = require('webpack');
const ExtractTextPlugin = require('extract-text-webpack-plugin');

const resolve = require('./config/resolve.js');
const entries = require('./config/entries');
const loaders = require('./config/loaders.js');

const nodeModulesDir = path.join(__dirname, '../node_modules');
const filename = '[name]';
const jsDir = 'scripts';
const cssDir = 'styles';
const nodeEnv = process.env.NODE_ENV;

module.exports = {
  resolve: resolve,
  module: {
    loaders: [
      loaders.js,
      loaders.css[nodeEnv],
    ],
  },
  stylus: {
    use: [require('nib')()],
    import: [`${nodeModulesDir}/nib/lib/nib/index.styl`],
  },
  plugins: [
    new webpack.HotModuleReplacementPlugin(),
    new ExtractTextPlugin(`${cssDir}/${filename}.css`),
  ],
  output: {
    path: path.join(__dirname, '../../public/assets'),
    publicPath: '/assets/',
    filename: `${jsDir}/${filename}.js`,
  },
  entry: entries,
  devtool: 'source-map',
};
