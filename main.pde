dots[] pos=new dots[200];
PImage img;
void setup(){
    size(459,612);
    img=loadImage("bigsy.jpg");
    for(int i=0;i<200;i++){
        pos[i]=new dots(); 
    }
}

dots closest(dots[] arr, int x,int y){
    float dis=99999;
    dots ret=new dots();
    for(dots n:arr){
        float distance=dist(x,y,n.pos.x,n.pos.y);
        if(distance<dis){
            dis=distance;
            ret=n;
        }
    }
    return ret;
}

float avg(color a){
    return (red(a)+blue(a)+green(a))/3;    
}

color swap(color a){
    return color(red(a),255-green(a),blue(a));
}

void draw(){
    background(0);
    dots temp=new dots();
    for(int i=0;i<width;i++){
        for(int j=0;j<height;j++){
            temp=closest(pos,i,j);
            float dis=dist(temp.pos.x,temp.pos.y,i,j);
            color vernoi=temp.getColor(0);
            color imgCol=img.get(i,j);
            
            float intensty=avg(imgCol);
            if(intensty>110){
                stroke(swap(temp.getColor(0)));//imgCol);    
            }
            else{
                stroke(temp.getColor(0));//,200+noise(i*0.01,j*0.01)*50);    
            }
            point(i,j);
        }
    }
    print("boop");
}
