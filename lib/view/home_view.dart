import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_bloc/constants/constants.dart';
import 'package:todo_bloc/widgets/add_todo.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: CustomScrollView(
             slivers: [
               SliverAppBar(
                 actions: [
                   Padding(
                     padding: EdgeInsets.only(right:10.w,top: 10.h),
                     child: IconButton(
                         onPressed:(){
                           showDialog(context: context,
                             builder: (context)=> const AddToDo());
                         },
                         icon: Icon(Icons.add,
                           color: Colors.pink.shade600,
                         size:40.sm)),
                   )
                 ],
                 backgroundColor: Colors.transparent,
                expandedHeight: 200.h,
                 flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(goodVibes,
                  fit: BoxFit.fitWidth),
             ),
            ),
               SliverList(
                 delegate: SliverChildBuilderDelegate(
                       (_, int index) {
                     return ListTile(
                       title: Padding(
                         padding: EdgeInsets.all(8.w),
                         child: Text(goodVibesOnly),
                       ),
                     );
                   },
                   childCount: 20,
                 ),
               ),
          ]),
        ),
    );
  }
}
