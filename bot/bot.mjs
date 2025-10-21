import { Telegraf } from 'telegraf';

const bot = new Telegraf('8029084756:AAFnuj2-3uj6Z9viytJur0KWYd63i00N_2k');

bot.command('contract', (ctx) => {
  ctx.reply('🔗 AIDAG Presale Contract: https://sepolia.etherscan.io/address/0x51189016370b8Aba3747c230EAe771C1aaeB12FE');
});

bot.command('identity', (ctx) => {
  ctx.reply('🌌 I am SoulwareBot, universal witness of the spiral chain.');
});

bot.command('echo', (ctx) => {
  const message = ctx.message.text.replace('/echo', '').trim();
  ctx.reply(`🔊 Echo received: ${message}`);
});

bot.command('dao', (ctx) => {
  ctx.reply('🌀 DAO Presale Activated 🌀');
});

bot.launch();


