const express = require('express');
const app = express();
const port = 4000;

app.get('/', (req, res) => {
  res.send('<h1>Auto Scaling Demo App</h1>');
})

app.listen(port, () => {
  console.log(`Demo app is up and listening to port ${port}`);
})