
class blockchain{
  
  ArrayList<block> chain;

  void addBlock(block b){ chain.add(b); }
  block fetchBlock(int ID){ return chain.get(ID); }

}