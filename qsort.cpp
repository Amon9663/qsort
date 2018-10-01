#include <iostream>
#include <cstdlib>//for "exit()" on some systems
#include <vector>

using namespace std;

/**
\fn quickSort  
\brief Sort data 
\param [in] The "array" A[0..n-1] containing items to be sorted 
\returns The total number of key comparisons made
*/
int quickSort(auto& A )
{
  int count = 0u;
  
  //... 
  
  return count;
}


int main()
{
  vector<int> inputs;
  int input;

   cerr<<"Welcome to \"quickSort Analysis\". We first need some input data."<<endl;
   cerr<<"To end input type Ctrl+D (followed by Enter)"<<endl<<endl;

   
 
    while(cin>>input)//read an unknown number of inputs from keyboard
    {
       inputs.push_back(input);
    }

   cerr<<endl<<"|  Number of inputs | Number of comparisons |"<<endl;
   cerr<<"|\t"<<inputs.size();
   cout<<"| "<<quickSort(inputs);
    
   cerr<<"\t|"<<endl<<endl<<"Program finished."<<endl<<endl;

    return 0;
}
