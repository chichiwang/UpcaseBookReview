const path = require('path');
const webpack = require('webpack');
const ExtractTextPlugin = require('extract-text-webpack-plugin');

const entries = require('./entries');

const nodeModulesDir = path.join(__dirname, '../node_modules');
const filename = '[name]';
const jsDir = 'scripts';
const cssDir = 'styles';

module.exports = {
  resolve: {
    modulesDirectories: [
      'node_modules',
      path.resolve(__dirname, '../'),
    ],
  },
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel',
      },
      {
        test: /\.styl$/,
        loader: ExtractTextPlugin.extract('style-loader', 'css-loader?modules&localIdentName=[local]!stylus-loader?sourceMap&sourceComments'),
      },
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
    filename: `${jsDir}/${filename}.js`,
  },
  entry: entries,
  devtool: 'source-map',
};
