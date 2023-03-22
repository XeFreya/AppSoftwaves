import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
   
  const DetailsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final String food = ModalRoute.of(context)?.settings.arguments.toString() ?? 'Sin descriptcion';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const _CustomAppBar(),
          SliverList(delegate: SliverChildListDelegate([
            const _ImageAndTitle(),
            const _Overview(),
          ]))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart_checkout),
        onPressed: () {},
        ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.purple,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          color: Colors.black12,
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 10),
          child: const Text('article.title', style: TextStyle(fontSize: 20)),
        ),
        background: const FadeInImage(
          placeholder: AssetImage('assets/loading.gif'), 
          image: NetworkImage('https://via.placeholder.com/500x300'),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}

class _ImageAndTitle extends StatelessWidget {
  const _ImageAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'), 
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 150,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Text('Hola', style: TextStyle(fontSize: 20), overflow: TextOverflow.ellipsis, maxLines: 2),
              Text('Soy la comida', style: TextStyle(fontSize:15))
              
            ],
          )

        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text('Magna reprehenderit elit aliquip consectetur eu cillum deserunt dolor Lorem eu. Mollit velit laborum duis cupidatat ullamco nostrud pariatur sint tempor mollit nisi. Laboris ex ipsum cupidatat sint non consectetur cillum ex occaecat.',
             textAlign: TextAlign.justify,
             style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}