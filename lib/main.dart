import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/Model/TravelModel.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
    
  }


}
class MainPage extends StatefulWidget{
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

int _selectedIndex=0;
final double _imageSize = 55;

  @override
  Widget build(BuildContext context) {
   
 var size= MediaQuery.of(context).size;

   return Scaffold(

    body: SingleChildScrollView(
      child: SafeArea(
        child: itemWidget(size),
      ),
    ),
   );
  }

  Widget itemWidget(Size size) {
    return Column(
        children: [
          Container(width: double.infinity,height: size.height/1.8, color: Colors.white,
          child: Stack(
            children: [
              //bg Image
              Container(
                
                width: double.infinity,
                height: size.height/2.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  ),
                  image: DecorationImage(image: AssetImage(travelList[_selectedIndex].image),
                  fit: BoxFit.fill),
                  
                ),
              ),

              //head Icon
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Padding(
                padding: const EdgeInsets.fromLTRB(16,20,16,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                
                          Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,color: const Color.fromARGB(104, 245, 233, 233)),
                    height: 50,width: 50,child:  Icon(CupertinoIcons.back),
                    ),
                   Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,color: const Color.fromARGB(104, 245, 233, 233)),
                    height: 50,width: 50,child:  Icon(CupertinoIcons.heart),
                    ),
                        
                  ],
                ),
                            ),
              ),
            Positioned(
              right: 0,
              top: 80,
              child: SizedBox(
                width: 95,
                height: double.maxFinite,
                child: ListView.builder(
                  itemCount: travelList.length,
                
                  itemBuilder: (context, index) {
                    
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });
                            },
                            child: AnimatedContainer(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,width: 3),
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(image: AssetImage(travelList[index].image),
                                fit: BoxFit.fill
                                )
                              ),
                              height: _selectedIndex == index? _imageSize+15: _imageSize ,
                              width: _selectedIndex== index ? _imageSize + 15 : _imageSize,
                              duration: Duration(milliseconds: 500),
                          
                            
                          )
                          ),
                        ),
                      ],
                    );
                  },),
              ),
            ),
             Positioned(
              bottom: size.height/10,
              left: size.width/15,

               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(travelList[_selectedIndex].name,style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                   
                    children: [
                      Icon(CupertinoIcons.placemark_fill,color: Colors.white,),
                      Text(travelList[_selectedIndex].location,style: TextStyle(color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal
                      ),),
                    ],
                  )
                ],
               ),
             )
            ],
            
          ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 10,

                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Color.fromARGB(60, 0, 0, 0),width: 1)),
                    child: SizedBox(
                      width:85 ,
                      height:85 ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Distance",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          Text(travelList[_selectedIndex].distance,style: TextStyle(fontSize: 16),)
                        ],
                      ),
                    ),
                    ),
                    Card(
                      elevation: 10,

                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Color.fromARGB(60, 0, 0, 0),width: 1)),
                    child: SizedBox(
                      width:85 ,
                      height:85 ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Temp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          Text(travelList[_selectedIndex].temp,style: TextStyle(fontSize: 16),)
                        ],
                      ),
                    ),
                    ),
                    Card(
                      elevation: 10,

                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Color.fromARGB(60, 0, 0, 0),width: 1)),
                    child: SizedBox(
                      width:85 ,
                      height:85 ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Rating",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          Text(travelList[_selectedIndex].rating,style: TextStyle(fontSize: 16),),

                        ],
                      ),
                    ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24,16,24,16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text("Description",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      ExpandableText(
                        travelList[_selectedIndex].discription,
                      textDirection: TextDirection.ltr,
                       expandText: "read more",
                       collapseText: "Show Less",
                       maxLines: 3,
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total Price",style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(travelList[_selectedIndex].price)
                              ],
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                            
                              shape: BoxShape.circle,
                              color: Color.from(alpha: 255, red: 0, green: 0, blue: 0)),
                              child: Icon(CupertinoIcons.forward,color: Colors.white,size: 55,),
                            )
                          ],
                         ),
                       )
                     ],
                  ),
                )
              ],
            ),

          )
        ],
      );
  }
}
   