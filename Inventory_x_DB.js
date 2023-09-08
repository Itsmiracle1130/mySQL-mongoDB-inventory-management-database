// CREATING ENTITIES

//create database
use inventory_x_db

//create collections
db.createCollection("users");
db.createCollection("customers");
db.createCollection("admin");
db.createCollection("items");
db.createCollection("orders");


// INSERTING RECORDS

// users
db.users.insertOne(
    {   "email": "user1@fmail.com",
        "password": "my_pass123",
        "phone_no": "90218722981",
        "DOB": "1997-04-11",
        "gender": "female",
        "user_type": "customer",
        "created_at": "2023-09-08 04:03:35"
    })

db.users.insertOne(
    {   "email": "user2@pmail.com",
        "password": "aforapple",
        "phone_no": "92797440473",
        "DOB": "1999-02-19",
        "gender": "female",
        "user_type": "customer",
        "created_at": "2023-08-01 09:13:05"
    })

db.users.insertOne(
    {   "email": "mycontact@gmail.com",
        "password": "password12345",
        "phone_no": "9288990005",
        "DOB": "2004-11-13",
        "gender": "male",
        "user_type": "admin",
        "created_at": "2023-08-11 19:32:14"
    })

db.users.insertOne(
    {   "email": "denny@yahoo.com",
        "password": "unexpected_1290",
        "phone_no": "8102998347",
        "DOB": "1981-10-11",
        "gender": "male",
        "user_type": "customer",
        "created_at": "2023-06-09 11:04:27"
    })

//customers
db.customers.insertOne(
    {   "name": "Adewale Paul",
        "interests": "singing, dancing, traveling, eating",
        "verified": false,
        "user_id": ObjectId("64fa9180f2a29bb7e5ffb1d8")
    })

db.customers.insertOne(
    {   "name": "Gracious Pelumi",
        "interests": "singing, rehearsing, creating contents, traveling",
        "verified": true,
        "user_id": ObjectId("64fa91d9f2a29bb7e5ffb1d9")
    })

db.customers.insertOne(
    {   "name": "Agelebe Dennis",
        "interests": "playing guitar, live concerts, fighting, evil things",
        "verified": true,
        "user_id": ObjectId("64fa920df2a29bb7e5ffb1db")
    })

// admin
db.admin.insertOne(
    {
        "name": "Miracle Peter",
        "role": "Inventory Manager",
        "user_id": ObjectId("64fa91f1f2a29bb7e5ffb1da")
    })

// items
db.items.insertOne(
    {
        "name": "“Reach Out To Asia” Fender Stratocaster", 
        "price": "$2,700,000", 
        "size": "medium",
        "category": "electric",
        "description": "In 2005, Bryan Adams created a project called “Reach Out To Asia” to help the victims of the earthquake and tsunami in the Indian Ocean. His guitar was signed by 19 different artists.", 
        "admin_id": ObjectId("64fa97bcf2a29bb7e5ffb1df")
    }
)
db.items.insertOne(
    {
        "name": "John Lennon’s 1962 Gibson J-160E Acoustic-Electric", 
        "price": "$2,400,000", 
        "size": "medium",
        "category": "semi-acoustic",
        "description": "This £161 guitar was used by The Beatles to compose songs like “She Loves You,” but was somehow lost after a performance in 1963. It magically reappeared many years later", 
        "admin_id": ObjectId("64fa97bcf2a29bb7e5ffb1df")
    }
)
db.items.insertOne(
    {
        "name": "Jimi Hendrix’ Fender Stratocaster'", 
        "price": "$2,000,000", 
        "size": "big",
        "category": "electric",
        "description": "Jimi Hendrix used this guitar to perform “The Star-Spangled Banner” at Woodstock in 1969, which was a legendary show. The buyer was none other than the co-founder of Microsoft.",
        "admin_id": ObjectId("64fa97bcf2a29bb7e5ffb1df")
    }
)
db.items.insertOne(
    {
        "name": "Bob Marley’s Washburn 22-Series Hawk", 
        "price": "$1,200,000", 
        "size": "small",
        "category": "acoustic",
        "description": "Bob Marley only used seven guitars for the duration of his career. The Washburn 22-Series Hawk is one of them, and the Jamaican government naturally declared it a national treasure.",
        "admin_id": ObjectId("64fa97bcf2a29bb7e5ffb1df")
    }
)
db.items.insertOne(
    {
        "name": "1958 Gibson “Korina” 1958 Explorer", 
        "price": "$1,100,000", 
        "size": "medium",
        "category": "electric",
        "description": "This model didn’t belong to any particular guitarist, but the likes of Slash used it. We can, of course, attribute part of the value to the fact that Gibson only ever made ten Korinas.",
        "admin_id": ObjectId("64fa97bcf2a29bb7e5ffb1df")
    }
)
db.items.insertOne(
    {
        "name": "Jerry Garcia’s “Wolf”", 
        "price": "$1,900,000", 
        "size": "medium",
        "category": "semi-acoustic",
        "description": "Jerry Garcia has a long history of famous guitars, and his “Wolf” is one of the most valuable. It originally had a peacock logo back in 1973 until Garcia replaced it with a wolf sticker.",
        "admin_id": ObjectId("64fa97bcf2a29bb7e5ffb1df")
    }
)
db.items.insertOne(
    {
        "name": "Eric Clapton’s “Blackie”", 
        "price": "$965,000", 
        "size": "big",
        "category": "electric",
        "description": "Bob Dylan wasn’t known for playing electric guitar until 1964. That’s when he performed with this guitar live for the first time. His fans didn’t appreciate it, but whoever bought it certainly did.",
        "admin_id": ObjectId("64fa97bcf2a29bb7e5ffb1df")
    }
)

// orders
db.orders.insertOne(
    {
        "status": "delivered",
        "created_at": "2023-06-11 11:23:04", 
        "items_id": ObjectId("64fa9ea4f2a29bb7e5ffb1e3"),
        "customers_id": ObjectId("64fa97a2f2a29bb7e5ffb1dd")
    }
)
db.orders.insertOne(
    {
        "status": "processed",
        "created_at": "2023-07-21 19:08:34", 
        "items_id": ObjectId("64fa9e83f2a29bb7e5ffb1e1"),
        "customers_id": ObjectId("64fa9781f2a29bb7e5ffb1dc")
    }
)
db.orders.insertOne(
    {
        "status": "failed",
        "created_at": "2023-08-02 00:38:42", 
        "items_id": ObjectId("64fa9ebef2a29bb7e5ffb1e5"),
        "customers_id": ObjectId("64fa97aef2a29bb7e5ffb1de")
    }
)
db.orders.insertOne(
    {
        "status": "canceled",
        "created_at": "2004-10-22 10:30:27", 
        "items_id": ObjectId("64fa9eccf2a29bb7e5ffb1e6"),
        "customers_id": ObjectId("64fa9781f2a29bb7e5ffb1dc")
    }
)
db.orders.insertOne(
    {
        "status": "in-transit",
        "created_at": "2023-06-06 14:01:29", 
        "items_id": ObjectId("64fa9eccf2a29bb7e5ffb1e6"),
        "customers_id": ObjectId("64fa97aef2a29bb7e5ffb1de")
    }
)
db.orders.insertOne(
    {
        "status": "delivered",
        "created_at": "2001-12-26 18:11:03", 
        "items_id": ObjectId("64fa9e83f2a29bb7e5ffb1e1"), 
        "customers_id": ObjectId("64fa97a2f2a29bb7e5ffb1dd")
    }
)


// GETTING RECORDS

db.users.find({})
db.orders.find({"status": "in-transit"})
db.customers.find({"_id": ObjectId("64fa9781f2a29bb7e5ffb1dc")})


//UPDATING RECORDS

db.users.updateOne(
    {_id: ObjectId("64fa9180f2a29bb7e5ffb1d8")},
    { $set: {email: "user1@gmail.com"}}
)
db.items.updateOne(
    {id: ObjectId("64fa9e64f2a29bb7e5ffb1e0")},
    { $set: {size: "big"}}
)


//DELETING RECORDS

db.users.deleteOne(
    {_id: ObjectId("64fa9180f2a29bb7e5ffb1d8")}
)
db.users.deleteOne(
    {_id: ObjectId("64fa9180f2a29bb7e5ffb1d8")}
)