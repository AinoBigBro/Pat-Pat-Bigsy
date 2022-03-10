class dots{
    PVector pos;
    int col;
    dots(){
        pos=new PVector(random(width),random(height));
        col=(int)random(4);
    }
    
    color getColor(float f){
        switch(col){
            case 0:
                return color(212-f,38,253-f);
            case 1:
                return color(138-f,34,227-f);
            case 2:
                return color(105,51,250-f);
            case 3:
                return color(34,35,227-f);
        }
        return color(0,0,0);
    }
};
