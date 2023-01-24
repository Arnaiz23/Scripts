#!/usr/bin/env node
const axios = require('axios');

const TOKEN = '123456789:ABCDefghIJKLmnop12345QRST6789UVWXYZ';
const TELEGRAM = 'https://api.telegram.org/bot$TOKEN';
const TEST_GROUP = '-123456789';
var url = TELEGRAM + TOKEN + '/sendMessage'
axios.post(url, { chat_id: TEST_GROUP, text: 'Hola. Bienvenido a Node.js' })
	.then(function(response) {
		console.log(response.data);
	});
