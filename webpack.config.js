module.exports = {
  entry: {
    socialcount: [
      './src/socialcount.coffee'
    ]
  },
  output: {
    libraryTarget: "commonjs2",
    library: "SharesCount",
    path: './dist/',
    filename: '[name].js'
  },
  resolve: {
    extensions: ['', '.js', '.coffee']
  },
  module: {
    loaders: [
      {test: /\.coffee$/, loader: 'coffee-loader'}
    ]
  }
};
