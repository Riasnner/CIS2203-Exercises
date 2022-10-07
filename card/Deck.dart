import 'cards.dart';

class Deck{
  List<Card> _cards;

  Deck(this._cards);

  void printCards(){
    for(var card in _cards){
      print("${card.rank} of ${card.suit}");
    }
  }

  toString() {
    return _cards.toString();
  }

  void shuffle(){
    _cards.shuffle();
  }

  Iterable cardsWithSuit(String suit){
    Iterable<Card>card = _cards.where((card) => card.suit == suit);
    return card;
  }
}