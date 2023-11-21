import asyncio 
import discord
import os

intents = discord. Intents.default ()
intents.message_content = True
client = discord.Client (intents=intents)

@client.event
async def on_ready() :
  print('Authenticated as {0.user}'. format (client))
  await client.change_presence(activity=discord.Activity(type=discord.ActivityType.playing, name="the role of Chief Virtual Intelligence."))

try:
  token = os.getenv('DISCORD_TOKEN')
  if token == "":
      raise Exception("how did you plan to authenticate today??")
  client.run (token)
except discord. HTTPException as e:
  if e.status == 429:
    print ("check stack overflow ur shit is fucked yo")
  else:
    raise e