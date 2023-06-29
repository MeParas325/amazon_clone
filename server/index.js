// IMPORTS FROM PACKAGES
const express = require('express')

// IMPORTS FROM OTHER FILES
const authRouter = require('./routes/auth')
const { default: mongoose } = require('mongoose')

// INIT
const app = express()
const PORT = 3000

const DB = 'mongodb+srv://Tanuja:Bca%401234@cluster0.zh5voi2.mongodb.net/?retryWrites=true&w=majority'

app.use(express.json())
app.use(authRouter)

mongoose.connect(DB).then(() => {
    console.log("Connection successful")
}).catch((e) => {
    console.log(e)

})

app.listen(PORT, () => {
    console.log(`Connected successfully: ${PORT}`)
    
})