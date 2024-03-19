import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Center(
          child: Text(
            "Widget Card",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: Center(
        child: body(),
      ),
    );
  }

  // Questa funzione restituisce un widget Card che si adatta al suo contenuto,
  // prendendo le dimensioni minime per contenere il figlio al suo interno.
  // Per modificare le dimensioni della Card, si può utilizzare un Container.
  Widget body() => Card(
        // InkWell è un widget che risponde al tocco dell'utente.
        // Quando l'utente tocca il widget, mostra un effetto d'onda
        // che conferma l'interazione e può eseguire azioni come definito in onTap.
        child: InkWell(
          // onTap: equivalente di onPressed nei buttons.
          // Quando viene toccato, incrementa il valore del contatore.
          onTap: () {
            incrementCounter();
          },
          splashColor: Colors.purpleAccent.shade100,
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            child: Text(
              "Card $counter", // Mostra il valore del contatore sulla Card.
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
      );
}
