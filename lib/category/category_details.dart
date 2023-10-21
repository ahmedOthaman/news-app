import 'package:flutter/material.dart';
import 'package:newsapp/api/api_manager.dart';
import 'package:newsapp/category/category_details_view_model.dart';
import 'package:newsapp/model/SourcesResponse.dart';
import 'package:newsapp/model/category_model.dart';
import 'package:newsapp/tabs/tab_container.dart';
import 'package:provider/provider.dart';

class CategoryDetails extends StatefulWidget {

  CategoryDM category ;
  CategoryDetails({required this.category});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {

  CategoryDetailsViewModel viewModel =CategoryDetailsViewModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.getSourceByCategoryId(widget.category.id);
  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>viewModel,
      child: Consumer<CategoryDetailsViewModel>(
          builder: (context,viewModel,child){
            if(viewModel.errorMessage !=null){
         return Column(
           children: [
             Text(viewModel.errorMessage!),
             ElevatedButton(onPressed: (){
               viewModel.getSourceByCategoryId(widget.category.id);
             }, child: Text('Try Agin'),
             ),
           ],
         );
            }
           else if(viewModel.sourcesList ==null){
              return Center(
                child:  CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              );
            }
            return  TabContainer(sourcesList: viewModel.sourcesList!);

          }

      ),
    );

       // FutureBuilder<SourceResponse>(
       //  future: ApiManager.getSources(widget.category.id),
       //  builder:(context,snapshot){
       //    if(snapshot.connectionState==ConnectionState.waiting){
       //      return Center(
       //        child:  CircularProgressIndicator(
       //          color:  Theme.of(context).primaryColor,
       //        ),
       //      );
       //    }
       //
       //    else if(snapshot.hasError){
       //      return Column(
       //        children: [
       //          Text('Something went wrong'),
       //          ElevatedButton(
       //            onPressed: (){
       //              ApiManager.getSources(widget.category.id);
       //              setState(() {
       //
       //              });
       //            },
       //            child: Text('Try Agin'),
       //
       //          ),
       //        ],
       //      );
       //    }
       //    if(snapshot.data?.status !='ok'){
       //      Column(
       //        children: [
       //          Text(snapshot.data?.message??''),
       //          ElevatedButton(
       //            onPressed: (){
       //              ApiManager.getSources(widget.category.id);
       //            },
       //            child: Text('Try Agin'),
       //
       //          ),
       //        ],
       //      );
       //    }
       //
       //    var sourcesList=snapshot.data?.sources??[];
       //    return TabContainer(sourcesList: sourcesList);
       //  },
       // );


  }
}
