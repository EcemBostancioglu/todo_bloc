import 'package:flutter/material.dart';
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
                     padding: EdgeInsets.only(right:10,top: 10),
                     child: IconButton(
                         onPressed:(){
                           showDialog(context: context,
                             builder: (context)=> const AddToDo());
                         },
                         icon: Icon(Icons.add,
                           color: Colors.pink.shade600,
                         size: 40)),
                   )
                 ],
                 backgroundColor: Colors.transparent,
                expandedHeight: 270.0,
                 flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset('assets/images/good_vibes.jpg',
                  fit: BoxFit.fitWidth),
             ),
            ),
               SliverList(
                 delegate: SliverChildBuilderDelegate(
                       (_, int index) {
                     return ListTile(
                       leading: Container(
                           padding: EdgeInsets.all(8),
                           width: 100),
                       title: Text('Good Vibes Only'),
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

//CustomScrollView(
//           slivers: [
//             SliverAppBar(
//               toolbarHeight:250,
//               flexibleSpace: FlexibleSpaceBar(
//                 background: Image.asset('assets/images/good_vibes.jpg',
//                     fit: BoxFit.cover),
//               ),
//             ),
//             SliverToBoxAdapter(
//               child: ListView.builder(
//                 physics:AlwaysScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   itemCount: 16,
//                   itemBuilder: (context,index){
//                     return ListTile(
//                       title: Text('Good Vibes Only'),
//                     );
//                   }),
//             ),
//           ],
//         ),