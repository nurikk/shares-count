Shares counter
======
Tiny(1.9kB non gzip, 840B gzip)  social network counter

# Installation
`npm install --save shares-counter`

# Usage
```javascript
counter = require('shares-counter')
counter.get('vk', 'www.aviasales.ru', function(shares) {
    console.log('vk shares', shares);
});
```
# Build own
`webpack -p` 
and see dist folder

# Supported networks
`facebook` (facebook.com)
`twitter` (twitter.com)
`vk` (vk.com)
`ok` (ok.ru)
