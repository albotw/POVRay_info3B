#ifndef(   Lit_Inc_Temp)
#declare Lit_Inc_Temp = version;
#version 3.6;

#declare Font="cyrvetic.ttf"                                 
                                 
                                 
#macro lit(s)  
#declare pied = 
union{  

    merge{
    
    lathe {
        bezier_spline
        4, // nombre de points
        <1,0> <1,0.5> <0.5,0.75> <0.2,1>
        texture {
        DMFWood4
            }
    } 

    lathe {
        bezier_spline
        4, // nombre de points
        <0,0> <1,0> <0.2,1> <1,3>
        texture {
        DMFWood4
           }
     }
}
}

#declare sommier =
union{

  box{
  <-1,3,-1> <9,3.5,5>
  texture{DMFWood1}  
  }
 }
 
#declare matelat = 
union{
  box{
  <-1,3.5,-1> <9,4.5,5> 
  pigment {rgb<1,1,1>
  }
  }
 } 
#declare couverture = 
union{
    box{
    <-1,4.7,-0.9> <5,4.7,5.1>
    pigment {rgb<1,0,0>
    }
    }
   }

object{
    pied 
    scale<s,s,s>
}
object{
    pied
    translate <0,0,4> 
    scale<s,s,s>
}
object {
    pied
    translate <8,0,0>
    scale<s,s,s>
}
object{
    pied 
    translate <8,0,4>
    scale<s,s,s>
}
object{
    sommier
    scale<s,s,s>
}   
object{
    matelat
    scale<s,s,s>
}    
object{ 
    couverture
    scale<s,s,s>
} 
#end

#version   Lit_Inc_Temp;
#end
