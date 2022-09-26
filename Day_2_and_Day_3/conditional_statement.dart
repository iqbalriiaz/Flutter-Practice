void main(){
    String name = "Riaz";
    final int age = 24;
    int price = 55;

    if((age <=10 && name =="Riaz") || price == 50){
        print("child");
    }

    else if((age <=30 && name =="Riiaz") || price == 50){
        print("young");
    }

    else{
        print("No Conditions Matched");
    }

    print("");

    ((age <=10 && name == "Riaz") || price == 50)? print("child")
        :((age <=30 && name == "Riiaz") || price == 50)? print("young")
            :print("Again, No Conditions Matched");
}