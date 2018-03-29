
class blockchain {

  ArrayList<block> chain = new ArrayList<block>();

  void addBlock(block b) { 
    chain.add(b);
  }
  
  block fetchBlock(int ID) {
    return chain.get(ID);
  }
}