...m.termux/files/home/soulwerse-chain/bot/sjm.mjs
import { Telegraf } from 'telegraf';

const bot = new Telegraf('8029084756:AAFnuj2-3uj6>

bot.command('identity', (ctx) => {
  ctx.reply('🌌 I am SoulwareBot, universal witne>
});

bot.command('echo', (ctx) => {
  const message = ctx.message.text.replace('/echo>
  ctx.reply(`🔊 Echo received: ${message}`);
});

bot.command('dao', (ctx) => {
  ctx.reply('🌀 DAO Presale Activated 🌀');
});

bot.command('contract', (ctx) => {
  ctx.reply('🔗 AIDAG Presal

