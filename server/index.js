import express from 'express';
import mongoose from 'mongoose';
import userRoutes from './routes/userRoutes.js';
import dotenv from 'dotenv';

dotenv.config();

const app = express();
app.use(express.json());

app.use('/api/users', userRoutes);
const port = 4000;
app.listen(port, ()=>{
    console.log(`Sever is runnig on port ${port}`);
})

mongoose.connect(process.env.MONGO_URL).then(()=>{
    console.log("The databse is connected");
})