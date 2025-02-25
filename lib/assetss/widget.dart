import 'package:flutter/material.dart';

class Shorts extends StatelessWidget {
  final Color? color;
  const Shorts({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: MediaQuery.sizeOf(context).height / 1.5,
                width: MediaQuery.sizeOf(context).width / 1.5,
                decoration: BoxDecoration(color: color),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 1.52,
            child: Container(
              // color: Colors.orange,
              height: MediaQuery.sizeOf(context).height / 5,
              width: MediaQuery.sizeOf(context).width / 1.4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CointainerDesign(
                      height: 40,
                      width: 185,
                      color: Colors.black45,
                      child: ContainerChild(
                        icon: Icons.search,
                        text: 'Search \"hot to water plant\"',
                      ),
                    ),
                    Row(
                      children: [
                        CointainerDesign(
                          height: 45,
                          width: 45,
                          color: color,
                          child: Icon(Icons.ac_unit),
                        ),
                        Text(
                          '\@ThePlantiBoys',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                        CointainerDesign(
                          height: 30,
                          width: 100,
                          color: Colors.white,
                          child: Text(
                            'Subscribe',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('He water the Plant Daily',style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),),
                    ),
                    // Row(
                    //   children: [
                    //     CointainerDesign(height: 35, width: 250, color: Colors.orange, child: Text('School Rooftop(Chh)'))
                    //   ],
                    // )
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CointainerDesign(height: 35, width: 110, color: color, child: ContainerChild(icon:Icons.video_library_outlined,text: 'Subscribers')),
                CointainerDesign(height: 35, width: 75, color: color, child: ContainerChild(icon:Icons.podcasts_sharp,text: 'Live')),
                CointainerDesign(height: 35, width: 85, color: color, child: ContainerChild(icon:Icons.local_fire_department_outlined,text: 'Trends')),
                CointainerDesign(height: 35, width: 100, color: color, child: ContainerChild(icon:Icons.shop_sharp,text: 'Shopping')),
                CointainerDesign(height: 35, width: 90, color: color, child: ContainerChild(icon:Icons.ac_unit,text: 'Addingg'))
              ],
            ),
          ),
          Positioned(
            top: size.height/2.4,
            left: size.width/1.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContainerChild_C(text: '1.4M',icon: Icons.thumb_up_alt_outlined,fontSize: 16,),
                ContainerChild_C(text: 'Dislike',icon: Icons.thumb_down_alt_outlined,fontSize: 16,),
                ContainerChild_C(text: '5008',icon: Icons.comment_outlined,fontSize: 16,),
                ContainerChild_C(text: 'Share',icon: Icons.share_outlined,fontSize: 16,),
                ContainerChild_C(text: '19.5K',icon: Icons.replay,fontSize: 16,),
                CointainerDesign(height: 50, width: 50, color: color, child: Icon(Icons.access_time_filled_rounded))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CointainerDesign extends StatelessWidget {
  final double? height, width;
  final Color? color;
  final Widget? child;
  // final double bradirs;
  const CointainerDesign({
    super.key,
    required this.height,
    required this.width,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(child: child),
      ),
    );
  }
}

class ContainerChild extends StatelessWidget {
  final IconData? icon;
  final String text;
  final Color? color;

  const ContainerChild({super.key, this.icon, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon),
          Text(
            text,
            style: TextStyle(
              // fontSize: 18,
              color: color,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }
}



class ContainerChild_C extends StatelessWidget {
  final IconData? icon;
  final String text;
  final Color? color;
  final double? fontSize;
  final double? isize;
  const ContainerChild_C({super.key, this.icon, required this.text, this.color,this.fontSize,this.isize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon,color: Colors.white,size: 40,),
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
