import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuisine App',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
      )
        ),
      ),
      body : ListView(
        children: [
          lobster(),
          topic(),
          profile(),
          date(),
          card(),
          line(),
          paragraph(),
          button1(),
          button2(),
        ],
      )
    );
  }

Container button1() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('วัตถุดิบที่ใช้'),
      ),
    );
  }

  Container button2() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('ขั้นตอนการทำ'),
      ),
    );
  }

  Container paragraph() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 20),
      child: Column(
        children: const [
          Text(
                'เมื่อเพื่อน ๆ อยากจะทำอะไรกินที่พิเศษ แต่อยู่หอ จะอุปกรณ์ก็ไม่อำนวยเท่าไรใช่ไหมค่ะ วันนี้จะมาแนะนำเมนูที่ทำได้ง่าย เพียงแค่มีหม้อหุงข้าว ก็ทำได้นั่นก็คือ “ซี่โครงหมูบาร์บีคิวอบชีส” ที่ทำได้อยู่ที่ไหนก็ทำได้ ถ้าพร้อมแล้วล้างหม้อหุงข้าวแล้วเข้าครัวพร้อมกันเลยค่ะ  ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),   
        ],
      ),
    );
  }

Row line() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 20),
            child: Divider(
              thickness: 2,
              color: Colors.grey[700],
            ),
          ),
        ),
        const Text('เกริ่นสักหน่อย',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 20),
            child: Divider(
              thickness: 2,
              color: Colors.grey[700],
            ),
          ),
        ),  
      ],
    );
  }


  Container card() {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Card(
            color: Colors.orange[100],
            child: Row(
              children: [
                ob1(),
                ob2(),
                ob3(),
                ob4(),
              ],
            ),
            
          ),
    );
  }

Widget ob4() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.user,
              color: Colors.green,
            ),
            Text(
              'สำหรับ',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
            Text(
              '2 เสิร์ฟ',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
          ],
        ),    
    ),
    );
    
  }

Widget ob3() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.gripfire,
              color: Colors.red,
            ),
            Text(
              'แคลอรี่',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
            Text(
              '300 Kcal/เสิร์ฟ',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
          ],
        ),    
    ),
    );
    
  }

 Widget ob2() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.utensils,
              color: Colors.orange,
            ),
            Text(
              'เวลาปรุง',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
            Text(
              '45 นาที',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
          ],
        ),    
    ),
    );
    
  }

  Widget ob1() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(34, 10, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.stopwatch,
              color: Colors.blue,
            ),
            Text(
              'เวลาเตรียม',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
            Text(
              '10 นาที',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
          ],
        ),    
    ),
    );
    
  }

  Widget date() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
              'วันที่ 17 ธ.ค. 2564  โดย เชฟกัน',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[850],
              ),
            ),
      ],
    );
  }

  Container profile() {
    return Container(
          child: const CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage('https://scontent.fbkk6-1.fna.fbcdn.net/v/t1.15752-9/266271112_4499205986872304_8923425482686949194_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=ae9488&_nc_ohc=5zjb088n3fMAX8S7tN7&_nc_ht=scontent.fbkk6-1.fna&oh=03_AVLU0QbZYc0aA-6jag_GB06XWEFftt9qZoSqOKYGOC0zRQ&oe=61E4A2F0',
          ),
          ),
        );
  }

  Container topic() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: Column(
        children: const [
          Text(
                'วิธีทำ “ซี่โครงหมูบาร์บีคิวอบชีส” เมนูเด็กหอ ที่ทำได้ในหม้อหุงข้าว',
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),   
          Text(
                'ซี่โครงหมูบาร์บีคิวอบชีส” เมนูเริ่ด ๆ ที่ทำได้ง่าย ๆ เพียงมีหม้อหุงข้าว ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.justify,
              ),
        ],
      ),
    );
  }

  SizedBox lobster() {
    return SizedBox(
      width: 200,
      height: 200,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: new AssetImage('images/porklibs_cover.jpg'),
          ),
        ),
      ),
    );
  }






}