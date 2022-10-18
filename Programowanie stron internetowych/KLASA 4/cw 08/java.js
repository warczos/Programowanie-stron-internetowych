function zmien() {
  let x,y,z;
  x=document.getElementById("mmarka").value;
  y=document.getElementById("mmodel").value;
  z=document.getElementById("rrok").value;

  let czlowiek={
    marka: x,
    model:y,
    rok: z,

    wyswietl:function() {
      document.getElementById("marka").innerHTML=this.marka;
      document.getElementById("model").innerHTML=this.model;
      document.getElementById("rok").innerHTML=this.rok;
    }
  }

  czlowiek.wyswietl();

}
