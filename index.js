const express=require('express')
const dotenv = require('dotenv')

dotenv.config()
app=express()

port=process.env.PORT||3000

app.get('/',(req,res)=>{
    res.render('home.hbs')
})

app.listen(port,()=>{
    console.log('Listening on Port '+port)
})
