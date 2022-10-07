import 'card/deck.dart';
import 'card/cards.dart';

void main(){
  List<Card> cards = <Card>[];
  var suits = ['Spades', 'Hearts', 'Diamonds', 'Clubs'];
  var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Jack', 'Queen', 'King'];

  for(var suit in suits){
    for(var rank in ranks){
      cards.add(Card(rank, suit));
     }
  }

  Deck deck = Deck(cards);
  deck.shuffle();
  deck.printCards();
  print("---------------------------");
  print("Find Specific Card: Diamonds");
  print(deck.cardsWithSuit('Diamonds'));
}