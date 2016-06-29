const ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports = {
  js: {
    test: /\.js$/,
    exclude: /node_modules/,
    loader: 'babel',
  },
  css: {
    development: {
      test: /\.styl$/,
      loader: 'style-loader!css-loader?modules&localIdentName=[local]!stylus-loader',
    },
    production: {
      test: /\.styl$/,
      loader: ExtractTextPlugin.extract('style-loader', 'css-loader?modules&localIdentName=[local]!stylus-loader?sourceMap&sourceComments'),
    },
  },
};
