import mongoose from "mongoose";
import { type } from "os";

const userSchema  = mongoose.Schema({
    name:{
        type: String,
        required: true
    },
    email:{
        type:String,
        required: true
    },
    password:{
        type : String ,
        required : true
    },
    phone:{
        type : String,
        required: true
    },
    isAdmin: {
        type: Boolean,
        required: true,
        default: false
    },
    address:{
        type : String,
        required: true

    }
})
const Users = mongoose.model("users", userSchema);
export default Users;