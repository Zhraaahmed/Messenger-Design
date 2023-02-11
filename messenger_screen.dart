import 'package:flutter/material.dart';
class MessengerPage extends StatelessWidget {
  const MessengerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,titleSpacing: 20,
      title: Row(
        children: [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage('https://1fid.com/wp-content/uploads/2022/06/cool-profile-picture-2-720x720.jpg'),
          ),SizedBox(width: 20,),
          Text('Chats',style: TextStyle(color: Colors.black),),


        ],
      ),
      actions: [
        IconButton(icon: CircleAvatar(backgroundColor: Colors.black,child: Icon(Icons.camera_alt,color: Colors.white,)), onPressed: () {  },)
        ,IconButton(icon: CircleAvatar(backgroundColor: Colors.black,child: Icon(Icons.edit,color: Colors.white,)), onPressed: () {  },)
      ],),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column
            (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300]
                ),padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 15),
                    Text('Search')
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) => buildStoryItem(),
                  itemCount: 10,),
              ),
              SizedBox(height: 16,),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                   itemBuilder:(context,index)=>buildChatItem() ,
                   separatorBuilder:(context,index)=> SizedBox(height: 20,),
                   itemCount: 15),
            ],
          ),
        ),
      ),
    );
  }
  //1.build item
  //2. build list
  //3. Add items to list
Widget buildChatItem()=> Row(
  children: [
  Stack(
  alignment: Alignment.bottomRight,
  children: [
  CircleAvatar(
  radius: 25.0,
  backgroundImage: NetworkImage('https://funkylife.in/wp-content/uploads/2022/04/Instagram-dp-23.jpg'),
  ),
  CircleAvatar(
  radius: 8, backgroundColor: Colors.white,
  ),
  CircleAvatar(
  radius: 7,
  backgroundColor: Colors.green,
  ),

  ],
  ),
  SizedBox(width: 20,),
  Expanded(
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text('Al-zhraa Ahmed Shaaan',overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(
  fontWeight:FontWeight.bold,fontSize: 16
  ),),
  SizedBox(height: 10,),
  Row(
  children: [
  Expanded(child: Text('Hello from other world',overflow: TextOverflow.ellipsis)),
  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Container(
  width: 7,
  height: 7,
  decoration: BoxDecoration(
  color: Colors.blue,
  shape: BoxShape.circle
  ),
  ),
  ),
  Text('02:00 AM')
  ],
  )
  ],
  ),
  )
  ],
  );
Widget buildStoryItem()=> Container(
  width: 60,
  child: Column(
    children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage('https://funkylife.in/wp-content/uploads/2022/04/Instagram-dp-23.jpg'),
          ),
          CircleAvatar(
            radius: 8, backgroundColor: Colors.white,
          ),
          CircleAvatar(
            radius: 7,
            backgroundColor: Colors.green,
          ),

        ],
      ),SizedBox(height: 6,),
      Text('Al-zhraa Ahmed Shaaban',maxLines: 2,overflow: TextOverflow.ellipsis,)
    ],
  ),
);


}
